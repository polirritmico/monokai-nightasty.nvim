local utils = require("monokai-nightasty.utils")
local fmt = string.format

-- stylua: ignore
local M = {
  base_url = "https://github.com/polirritmico/monokai-nightasty.nvim/blob/main/lua/monokai-nightasty/",
  readme_file = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h") .. "/README.md",
}

---@param pattern string Section pattern of the README to replace
---@param content string[] list of strings to concatenate into the readme file
---@param verbose? boolean
function M.fill_readme_content(pattern, content, verbose)
  -- stylua: ignore
  if verbose then print("[write] README.md") end

  local readme = utils.read_file(M.readme_file)
  readme = readme:gsub(pattern, "%1\n" .. table.concat(content, "\n") .. "\n%2")

  utils.overwrite(M.readme_file, readme)
end

---Get the plugin url from the highlight group definition file
---@param mod_plugin string Module name of the plugin
---@return string
function M.highlight_mod_url(mod_plugin)
  local module = utils.mod("monokai-nightasty.highlights." .. mod_plugin)
  return module.url or ""
end

---Take the implemented plugins from highlights/init.lua and generate a markdown
---list with the plugin name (with a link to the plugin repository) and the
---plugin module name (with a link to the module code in github)
---@return string[]
function M.generate_implemented_plugins()
  local highlights = require("monokai-nightasty.highlights")
  local implemented_plugins = highlights.implemented_plugins
  table.sort(implemented_plugins)

  local plugins_table = { "| Plugin | Highlights Module |", "|--|--|" }
  for plugin, module in pairs(implemented_plugins) do
    local repo_url = M.highlight_mod_url(module)
    local mod_url = M.base_url .. "highlights/" .. module
    local row = fmt("| [%s](%s) | [%s](%s.lua) |", plugin, repo_url, module, mod_url)
    plugins_table[#plugins_table + 1] = row
  end
  plugins_table[#plugins_table + 1] = ""

  return plugins_table
end

function M.readme_external_format()
  local fname = "prettier"
  local ok, mason = pcall(require, "mason-registry")
  if not ok then
    vim.notify("Missing Mason", vim.log.levels.ERROR)
  end
  if not mason.has_package(fname) or not mason.get_package(fname):is_installed() then
    vim.notify("Prettier must be installed through Mason", vim.log.levels.ERROR)
    return
  end

  local prettier = mason.get_package(fname):get_install_path()
    .. "/node_modules/prettier/bin/prettier.cjs"

  local format_command = {
    prettier,
    "--prose-wrap",
    "always",
    "--print-width",
    "80",
    "--write",
    M.readme_file,
  }

  vim.system(format_command):wait()
  vim.notify("README.md format done", vim.log.levels.INFO)
end

function M.update_readme()
  local pattern = "(<%!%-%- plugins:start %-%->).*(<%!%-%- plugins:end %-%->)"
  local content = M.generate_implemented_plugins()
  M.fill_readme_content(pattern, content)
  M.readme_external_format()
end

return M
