local utils = require("monokai-nightasty.utils")
local highlights = require("monokai-nightasty.highlights")

local M = {}

---@param opts monokai.Config
function M.setup(opts)
  opts.transparent = opts[opts.style .. "_style_background"] == "transparent"

  local colors, hlgroups

  if opts.cache then
    highlights.generate_enabled_hlgroups(opts)
    local current_inputs = highlights.generate_inputs(opts)
    local cache = utils.cache.read(opts.style)

    if cache and vim.deep_equal(cache.inputs, current_inputs) then
      colors = cache.colors
      hlgroups = cache.hlgroups

      -- Apply non-cached styles customizations (colors are already applied)
      opts.on_highlights(hlgroups, colors)
    end
  end

  if not hlgroups then
    colors = require("monokai-nightasty.colors").setup(opts)
    hlgroups = require("monokai-nightasty.highlights").setup(colors, opts)
  end

  -- Clear highlights only when switching the theme or toggling dark/light mode
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "monokai-nightasty"

  -- Apply the highlights
  for group, hl in pairs(hlgroups) do
    if type(hl) == "string" then
      vim.api.nvim_set_hl(0, group, { link = hl })
    else
      vim.api.nvim_set_hl(0, group, hl)
    end
  end

  if opts.terminal_colors ~= false then
    M.terminal(colors, opts.terminal_colors)
  end

  return colors, hlgroups, opts
end

---@param colors ColorScheme
---@param opts boolean|table|fun(colors:ColorScheme):table
function M.terminal(colors, opts)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.magenta
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.red
  vim.g.terminal_color_6 = colors.blue_alt

  vim.g.terminal_color_9 = colors.magenta
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.red
  vim.g.terminal_color_14 = colors.blue_alt

  -- User custom colors:
  local opts_type = type(opts)
  if opts_type == "boolean" then
    return
  end
  local custom = opts_type == "function" and opts(colors) or opts --[[@as table]]
  for k, color in pairs(custom) do
    if k ~= "fg" then
      vim.g[k] = color
    else
      -- HACK: In a terminal buffer fg color is handled by the "Normal" highlight.
      -- Check https://github.com/neovim/neovim/issues/26857
      local new_hl = "MonokaiNightastyTermNormal"
      vim.api.nvim_set_hl(0, new_hl, { fg = color })
      local group = vim.api.nvim_create_augroup("MonokaiNightasty", { clear = true })
      vim.api.nvim_create_autocmd("TermOpen", {
        group = group,
        callback = function()
          vim.cmd.setlocal(string.format("winhighlight=%s:%s", "Normal", new_hl))
        end,
      })
    end
  end
end

return M
