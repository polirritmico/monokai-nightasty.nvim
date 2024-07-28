local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local opts = require("monokai-nightasty.config").extend()
  local hlgroups = require("monokai-nightasty.highlights").setup(colors, opts)

  local terminal_colors = {
    ["vim.g.terminal_color_0"] = vim.g.terminal_color_0,
    ["vim.g.terminal_color_1"] = vim.g.terminal_color_1,
    ["vim.g.terminal_color_2"] = vim.g.terminal_color_2,
    ["vim.g.terminal_color_3"] = vim.g.terminal_color_3,
    ["vim.g.terminal_color_4"] = vim.g.terminal_color_4,
    ["vim.g.terminal_color_5"] = vim.g.terminal_color_5,
    ["vim.g.terminal_color_6"] = vim.g.terminal_color_6,
    ["vim.g.terminal_color_7"] = vim.g.terminal_color_7,
    ["vim.g.terminal_color_8"] = vim.g.terminal_color_8,
    ["vim.g.terminal_color_9"] = vim.g.terminal_color_9,
    ["vim.g.terminal_color_10"] = vim.g.terminal_color_10,
    ["vim.g.terminal_color_11"] = vim.g.terminal_color_11,
    ["vim.g.terminal_color_12"] = vim.g.terminal_color_12,
    ["vim.g.terminal_color_13"] = vim.g.terminal_color_13,
    ["vim.g.terminal_color_14"] = vim.g.terminal_color_14,
    ["vim.g.terminal_color_15"] = vim.g.terminal_color_15,
  }

  local name = "-- ColorScheme: " .. colors["_style_name"]
  colors["_style_name"] = nil
  colors["_upstream_url"] = nil

  local ret = name
    .. "\n\nlocal colors = "
    .. vim.inspect(colors)
    .. "\n\nlocal highlights = "
    .. vim.inspect(hlgroups)
    .. "\n\nlocal terminal_colors = "
    .. vim.inspect(terminal_colors)
  return ret
end

return M
