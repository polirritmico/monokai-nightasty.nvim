local utils = require("monokai-nightasty.utils")
local docs = require("monokai-nightasty.docs")

local M = {}

---Table of plugin extensions metadata
---@type table<{name:string, ext:string, label:string, both_styles:boolean, url:string}>
-- stylua: ignore
M.extras = {
  { name = "palettes", ext = "lua", label = "Monokai Nightasty Palettes", both_styles = true, url = "https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/extras/palettes" },
  { name = "kitty", ext = "conf", label = "Kitty", both_styles = true, url = "https://sw.kovidgoyal.net/kitty/" },
  { name = "lazygit", ext = "yml", label = "Lazygit", both_styles = false, url = "https://github.com/jesseduffield/lazygit" },
  { name = "tmux", ext = "tmux", label = "Tmux", both_styles = false, url = "https://github.com/tmux/tmux/wiki" },
  { name = "zathura", ext = "zathurarc", label = "Zathura", both_styles = false, url = "https://pwmt.org/projects/zathura/" },
}

function M.fill_extras_in_readme()
  local pattern = "(<%!%-%- extras:start %-%->).*(<%!%-%- extras:end %-%->)"
  local content = {}

  for _, info in ipairs(M.extras) do
    local item_line = string.format(
      "- [%s](%s) ([%s](extras/%s))",
      info.label,
      info.url,
      info.name,
      info.name
    )
    content[#content + 1] = item_line
  end
  content[#content + 1] = "\n"

  docs.fill_readme_content(pattern, content, "Update extras")
end

function M.generate_extra_files()
  for _, extra in ipairs(M.extras) do
    package.loaded["monokai-nightasty.extras." .. extra.name] = nil
    local plugin = require("monokai-nightasty.extras." .. extra.name)

    -- Dark Theme
    local colors = require("monokai-nightasty.colors").setup({ style = "dark" })
    local filename = "extras/" .. extra.name .. "/monokai-nightasty_dark." .. extra.ext
    colors["_upstream_url"] = "https://github.com/polirritmico/monokai-nightasty.nvim/raw/main/"
      .. filename
    colors["_style_name"] = "Monokai NighTasty Dark"
    utils.write(plugin.generate(colors), filename)

    -- Light Theme
    if extra.both_styles then
      colors = require("monokai-nightasty.colors").setup({ style = "light" })
      filename = "extras/" .. extra.name .. "/monokai-nightasty_light." .. extra.ext
      colors["_upstream_url"] = "https://github.com/polirritmico/monokai-nightasty.nvim/raw/main/"
        .. filename
      colors["_style_name"] = "Monokai NighTasty Light"
      utils.write_file(plugin.generate(colors), filename, true)
    end
  end
end

--- Run this function through require("monokai-nightasty.extras").setup() to
--- generate the files into './extras/...'
function M.setup()
  M.fill_extras_in_readme()
  M.generate_extra_files()
end

return M
