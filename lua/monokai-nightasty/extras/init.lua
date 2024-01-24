local M = {}

---Table of plugin extensions metadata
---@type table<{name:string, ext:string, label:string, both_styles:boolean, url:string}>
-- stylua: ignore
M.extras = {
  { name = "palettes", ext = "lua", label = "Monokai Nightasty Palettes", both_styles = true, url = "https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/extras/palettes" },
  { name = "kitty", ext = "conf", label = "Kitty", both_styles = true, url = "https://sw.kovidgoyal.net/kitty/" },
  { name = "tmux", ext = "tmux", label = "Tmux", both_styles = false, url = "https://github.com/tmux/tmux/wiki" },
  { name = "zathura", ext = "zathurarc", label = "Zathura", both_styles = false, url = "https://pwmt.org/projects/zathura/" },
}

local function write(str, fileName)
  print("[write] " .. fileName)
  vim.fn.mkdir(vim.fs.dirname(fileName), "p")
  local file = assert(io.open(fileName, "w"))
  file:write(str)
  file:close()
end

function M.read_file(file)
  local fd = assert(io.open(file, "r"))
  ---@type string
  local data = fd:read("*a")
  fd:close()
  return data
end

function M.write_file(file, contents)
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

function M.fill_extras_in_readme()
  print("[write] README.md")
  local file = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h:h") .. "/README.md"
  local pattern = "(<%!%-%- extras:start %-%->).*(<%!%-%- extras:end %-%->)"
  local readme = M.read_file(file)
  local lines = {}
  for _, info in ipairs(M.extras) do
    local item_line = string.format("- [%s](%s) ([%s](extras/%s))", info.label, info.url, info.name, info.name)
    table.insert(lines, item_line)
  end
  readme = readme:gsub(pattern, "%1\n" .. table.concat(lines, "\n") .. "\n%2")
  M.write_file(file, readme)
end

--- Run this function through require("monokai-nightasty.extras").setup() to
--- generate the files into 'extras/...' (at pwd)
function M.setup()
  M.fill_extras_in_readme()

  for _, extra in ipairs(M.extras) do
    package.loaded["monokai-nightasty.extras." .. extra.name] = nil
    local plugin = require("monokai-nightasty.extras." .. extra.name)

    -- Dark Theme
    local colors = require("monokai-nightasty.colors").setup({ force_style = "dark" })
    local filename = "extras/" .. extra.name .. "/monokai-nightasty_dark." .. extra.ext
    colors["_upstream_url"] = "https://github.com/polirritmico/monokai-nightasty.nvim/raw/main/" .. filename
    colors["_style_name"] = "Monokai NighTasty Dark"
    write(plugin.generate(colors), filename)

    -- Light Theme
    if extra.both_styles then
      colors = require("monokai-nightasty.colors").setup({ force_style = "light" })
      filename = "extras/" .. extra.name .. "/monokai-nightasty_light." .. extra.ext
      colors["_upstream_url"] = "https://github.com/polirritmico/monokai-nightasty.nvim/raw/main/" .. filename
      colors["_style_name"] = "Monokai NighTasty Light"
      write(plugin.generate(colors), filename)
    end
  end
end

return M
