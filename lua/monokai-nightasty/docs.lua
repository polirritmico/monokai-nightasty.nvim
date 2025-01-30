local utils = require("monokai-nightasty.utils")
local fmt = string.format

-- stylua: ignore
local M = {
  base_url = "https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/",
  readme_file = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h") .. "/README.md",
}

---Get the plugin url from the highlight group definition file
---@param mod_plugin string Module name of the plugin
---@return string
function M.highlight_mod_url(mod_plugin)
  local module = utils.mod("monokai-nightasty.highlights." .. mod_plugin)
  return module and module.url or ""
end

function M.generate_cfg_spec_block()
  local cfg_path = vim.fn.fnamemodify(utils.me, ":p:h") .. "/monokai-nightasty/config.lua"
  local cfg_code = utils.read_file(cfg_path)
  local spec_block = cfg_code:match("\n(---@class monokai%.Config.-)\nM.defaults = {\n")
  -- Don't document the last two fields of the spec (internal usage)
  spec_block = spec_block:gsub("(.-)\n[^\n]*\n[^\n]*$", "%1")
  return "```lua\n" .. spec_block .. "\n```"
end

function M.generate_defaults_block()
  local cfg_path = vim.fn.fnamemodify(utils.me, ":p:h") .. "/monokai-nightasty/config.lua"
  local cfg_code = utils.read_file(cfg_path)
  local default_block = cfg_code:match("\n(M.defaults = {.-\n}\n)")
  return "````lua\n" .. default_block .. "````"
end

---Take the implemented plugins from highlights/init.lua and generate a markdown
---list with the plugin name and the plugin module name with links.
---@return string[]
function M.generate_implemented_plugins()
  local highlights = utils.mod("monokai-nightasty.highlights")
  local implemented_plugins = highlights.implemented_plugins
  local sorted_plugins_list = vim.tbl_keys(implemented_plugins)
  table.sort(sorted_plugins_list)

  local plugins_table = { "| Plugin | Highlights Module |", "|--|--|" }
  for _, plugin in pairs(sorted_plugins_list) do
    local module = implemented_plugins[plugin]

    local repo_url = M.highlight_mod_url(module)
    local mod_url = M.base_url .. "highlights/" .. module
    local row = fmt("| [%s](%s) | [%s](%s.lua) |", plugin, repo_url, module, mod_url)

    plugins_table[#plugins_table + 1] = row
  end
  plugins_table[#plugins_table + 1] = ""

  return plugins_table
end

---Get the extras list from the extras module and generate a markdown list
function M.generate_extras_list()
  local extras = utils.mod("monokai-nightasty.extras.init")
  local extras_list = {}
  for _, mod_data in ipairs(extras.extras) do
    local line = fmt(
      "- [%s](%s) ([%s](extras/%s))",
      mod_data.label,
      mod_data.url,
      mod_data.name,
      mod_data.name
    )
    extras_list[#extras_list + 1] = line
  end
  extras_list[#extras_list + 1] = ""

  return extras_list
end

---Format the README markdown file through Prettier formater.
---_Uses `mason-registry` to get the binary path._
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
  vim.notify("[format README.md]: Done", vim.log.levels.INFO)
end

---@alias ReadmeSection { tag: string, text: string|string[]  }

---@param sections ReadmeSection[]
---@param verbose? boolean
function M.update_readme_content(sections, verbose)
  local readme = utils.read_file(M.readme_file)

  for _, section in ipairs(sections) do
    local pattern = "(<%!%-%- "
      .. section.tag
      .. ":start %-%->).*(<%!%-%- "
      .. section.tag
      .. ":end %-%->)"
    if type(section.text) == "string" then
      readme = readme:gsub(pattern, "%1\n" .. section.text .. "\n%2")
    else ---@diagnostic disable: param-type-mismatch
      readme = readme:gsub(pattern, "%1\n" .. table.concat(section.text, "\n") .. "\n%2")
    end

    if verbose then
      print("[write README.md]: Updated " .. section.tag:gsub("%%", "") .. " section")
    end
  end

  utils.overwrite(M.readme_file, readme)
end

function M.update_readme()
  if not utils.running_from_dev() then
    local msg = "Docs generation shouldn't be executed from the lazy.nvim data path."
      .. "\nAborting..."
    vim.notify(msg, vim.log.levels.WARN)
    return
  end

  ---@type ReadmeSection[]
  local content = {
    { tag = "plugins", text = M.generate_implemented_plugins() },
    { tag = "config%-spec", text = M.generate_cfg_spec_block() },
    { tag = "defaults", text = M.generate_defaults_block() },
    { tag = "extras", text = M.generate_extras_list() },
  }

  M.update_readme_content(content, true)
  M.readme_external_format()
end

M.setup = M.update_readme

return M
