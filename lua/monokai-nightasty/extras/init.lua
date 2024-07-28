local utils = require("monokai-nightasty.utils")
local docs = require("monokai-nightasty.docs")
local fmt = string.format

local M = {}

---Table of plugin extensions metadata
---@class monokai.Extra
---@type table<string, {ext:string, label:string, both_styles:boolean, url:string}>
M.extras = {
  palettes = {
    ext = "lua",
    label = "Monokai Nightasty Palettes",
    both_styles = true,
    url = "https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/extras/palettes",
  },
  kitty = {
    ext = "conf",
    label = "Kitty",
    both_styles = true,
    url = "https://sw.kovidgoyal.net/kitty/",
  },
  lazygit = {
    ext = "yml",
    label = "Lazygit",
    both_styles = false,
    url = "https://github.com/jesseduffield/lazygit",
  },
  tmux = {
    ext = "tmux",
    label = "Tmux",
    both_styles = false,
    url = "https://github.com/tmux/tmux/wiki",
  },
  zathura = {
    ext = "zathurarc",
    label = "Zathura",
    both_styles = false,
    url = "https://pwmt.org/projects/zathura/",
  },
}

function M.fill_extras_in_readme()
  local pattern = "(<%!%-%- extras:start %-%->).*(<%!%-%- extras:end %-%->)"
  local extras_list = {}

  for name, v in ipairs(M.extras) do
    local line = fmt("- [%s](%s) ([%s](extras/%s))", v.label, v.url, name, name)
    extras_list[#extras_list + 1] = line
  end
  extras_list[#extras_list + 1] = ""

  docs.fill_readme_content(pattern, extras_list, "Update extras")
end

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

function M.generate_extra_files()
  local palettes = M.default_colors()

  local base_dir = vim.fn.fnamemodify(utils.me, ":h") .. "/extras"
  local base_url = "https://github.com/polirritmico/monokai-nightasty.nvim/raw/main/extras/"

  ---@param name string
  ---@param info {ext:string, label:string, both_styles:boolean, url:string}
  ---@param style string
  local function generate_extra_file(name, info, style)
    local colors = palettes[style]
    local extra_mod = utils.mod("monokai-nightasty.extras." .. name)
    local target_dir = fmt("%s/%s/monokai-nightasty_%s.%s", base_dir, name, style, info.ext)

    colors["_upstream_url"] = base_url .. name
    colors["_style_name"] = "Monokai NighTasty " .. style:gsub("^%l", string.upper)

    utils.write_file(extra_mod.generate(colors), target_dir)

    colors["_upstream_url"] = nil
    colors["_style_name"] = nil
  end

  for filename, info in pairs(M.extras) do
    generate_extra_file(filename, info, "dark")
    if info.both_styles then
      generate_extra_file(filename, info, "light")
    end
  end
end

--- Run this function through require("monokai-nightasty.extras").setup() to
--- generate the files into './extras/...'
function M.setup()
  M.fill_extras_in_readme()
  M.generate_extra_files()
  vim.notify("Done", vim.log.levels.INFO)
end

return M
