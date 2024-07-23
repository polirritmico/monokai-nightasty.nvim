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

  if opts.terminal_colors ~= false then
    M.terminal(colors, opts)
  end

  return colors, hlgroups, opts
end

---@param colors ColorScheme
---@param opts monokai.Config
function M.terminal(colors, opts)
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

  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.magenta
  vim.g.terminal_color_14 = colors.blue_alt

  -- Set autocmd
  local group = vim.api.nvim_create_augroup("MonokaiNightasty", { clear = true })
  local opt_type = type(opts.terminal_colors)
  local term_hl = opt_type == "table" and opts.terminal_colors
    or opt_type == "function" and opts.terminal_colors(colors)
    or {}

  ---@cast term_hl table
  if next(term_hl) ~= nil then
    vim.api.nvim_create_autocmd("TermOpen", {
      group = group,
      callback = function()
        for name, hl in pairs(term_hl) do
          local new_hl = "MonokaiNightastyTerminal" .. name
          vim.api.nvim_set_hl(0, new_hl, hl)
          vim.cmd.setlocal(string.format("winhighlight=%s:%s", name, new_hl))
        end
      end,
    })
  end
end

return M
