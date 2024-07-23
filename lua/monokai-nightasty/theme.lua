local utils = require("monokai-nightasty.utils")

local M = {}

---@param opts? monokai.Config
function M.setup(opts)
  opts = require("monokai-nightasty.config").extend(opts)

  local colors = require("monokai-nightasty.colors").setup(opts)
  local hlgroups = require("monokai-nightasty.highlights").setup(colors, opts)

  -- if not the default colorscheme clear it
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  -- TODO: Check where put the is light logic. Maybe in config?
  vim.g.colors_name = "monokai-nightasty-" .. (utils.is_light() and "light" or "dark")
  -- vim.g.colors_name = "monokai-nightasty"

  for group, hl in pairs(hlgroups) do
    if type(hl) == "string" then
      hl = { link = hl }
    end
    vim.api.nvim_set_hl(0, group, hl)
  end

  if opts.terminal_colors then
    M.terminal(colors)
  end

  -- M.autocmds(theme.config, theme.colors)

  return colors, hlgroups, opts
end

---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_6 = colors.blue_alt

  vim.g.terminal_color_9 = utils.lighten(colors.red, 0.5)
  vim.g.terminal_color_10 = utils.lighten(colors.green, 0.5)
  vim.g.terminal_color_11 = utils.lighten(colors.yellow, 0.5)
  vim.g.terminal_color_12 = utils.lighten(colors.blue, 0.5)
  vim.g.terminal_color_13 = utils.lighten(colors.magenta, 0.5)
  vim.g.terminal_color_14 = utils.lighten(colors.blue_alt, 0.5)
end

return M
