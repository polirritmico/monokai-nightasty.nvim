local utils = require("monokai-nightasty.utils")

local M = {}

---Table of plugin extensions metadata
---@type monokai.ExtraInfo[]
M.extras = {
  {
    name = "palettes",
    ext = ".lua",
    label = "Monokai Nightasty Palettes",
    both_styles = true,
    url = "https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/extras/palettes",
  },
  {
    name = "kitty",
    ext = ".conf",
    label = "Kitty",
    both_styles = true,
    url = "https://sw.kovidgoyal.net/kitty/",
  },
  {
    name = "konsole",
    ext = ".colorscheme",
    label = "Konsole",
    both_styles = true,
    url = "https://invent.kde.org/utilities/konsole",
  },
  {
    name = "lazygit",
    ext = ".yml",
    label = "Lazygit",
    both_styles = false,
    url = "https://github.com/jesseduffield/lazygit",
  },
  {
    name = "tmux",
    ext = ".tmux",
    label = "Tmux",
    both_styles = false,
    url = "https://github.com/tmux/tmux/wiki",
    alt = { "rounded" },
  },
  {
    name = "zathura",
    ext = ".zathurarc",
    label = "Zathura",
    both_styles = false,
    url = "https://pwmt.org/projects/zathura/",
  },
}

---Reset to get a clean state of the colors
---@return monokai.Config
function M.reset_monokai_nightasty()
  for pkg in pairs(package.loaded) do
    if pkg:find("^monokai%-nightasty") then
      package.loaded[pkg] = nil
    end
  end
  require("monokai-nightasty").setup({
    auto_enable_plugins = false,
    plugins = { all = true },
    cache = false,
  })
  require("monokai-nightasty.utils").cache.clear()
  return require("monokai-nightasty.config").extend()
end

---Get the dark and light default palettes
---@return {dark:ColorScheme, light:ColorScheme}
function M.default_colors()
  local defaults = M.reset_monokai_nightasty()
  defaults.style = "dark"
  local colors_dark = require("monokai-nightasty.colors").setup(defaults)
  defaults.style = "light"
  local colors_light = require("monokai-nightasty.colors").setup(defaults)

  assert(colors_dark.fg == "#ffffff", "[dark]: Wrong default fg color")
  assert(colors_light.fg == "#333333", "[light]: Wrong default fg color")
  return { dark = colors_dark, light = colors_light }
end

---@param silent? boolean
function M.generate_extra_files(silent)
  local palettes = M.default_colors()

  local base_dir = vim.fn.fnamemodify(utils.me, ":h") .. "/extras/"
  local base_url = "https://github.com/polirritmico/monokai-nightasty.nvim/raw/main/extras/"

  ---@param info monokai.ExtraInfo
  ---@param style string
  local function generate_extra_file(info, style)
    local colors = palettes[style]
    local filename = info.name .. "/monokai-nightasty_" .. style .. info.ext
    local target_dir = base_dir .. filename
    local extra_mod = utils.mod("monokai-nightasty.extras." .. info.name)
    colors["_upstream_url"] = base_url .. filename
    colors["_style_name"] = "Monokai NighTasty " .. style:gsub("^%l", string.upper)

    utils.mkdir_parent(target_dir)
    utils.write_file(extra_mod.generate(colors), target_dir)

    if info.alt then
      for _, alt in pairs(info.alt) do
        local alt_target_filepath = string.format(
          "%s%s/monokai-nightasty_%s-%s%s",
          base_dir,
          info.name,
          style,
          alt,
          info.ext
        )
        P(alt_target_filepath)
        utils.write_file(extra_mod[alt](colors), alt_target_filepath)
      end
    end
  end

  for _, info in ipairs(M.extras) do
    generate_extra_file(info, "dark")
    if info.both_styles then
      generate_extra_file(info, "light")
    end

    if silent ~= false then
      print("[extras]: Generated file for " .. info.name)
    end
  end

  if silent ~= false then
    print("[extras]: Done")
  end
end

--- Run this function through require("monokai-nightasty.extras").setup() to
--- generate the files into 'extras/...'
M.setup = function()
  if not utils.running_from_dev() then
    local msg = "Extras generation shouldn't be executed from the lazy.nvim data path."
      .. "\nAborting..."
    vim.notify(msg, vim.log.levels.WARN)
    return
  end
  M.generate_extra_files()
end

return M
