local M = {}

M.url = "https://github.com/echasnovski/mini.statusline"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local style = opts.lualine_style == "default" and vim.o.background or opts.lualine_style
  local bold = opts.lualine_bold
  if style == "dark" then
    return {
      MiniStatuslineModeNormal = {
        fg = c.lualine.normal_fg,
        bg = c.lualine.normal_bg,
        bold = bold,
      },
      MiniStatuslineModeInsert = { fg = c.black, bg = c.yellow_alt, bold = bold },
      MiniStatuslineModeVisual = { fg = c.black, bg = c.purple, bold = bold },
      MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = bold },
      MiniStatuslineModeCommand = { fg = c.green, bg = c.black, bold = bold },
      MiniStatuslineModeOther = { fg = c.blue_alt, bg = c.black, bold = bold },

      MiniStatuslineDevinfo = { fg = c.green, bg = c.bg_status_alt },
      MiniStatuslineFilename = { fg = c.fg_statusline, bg = c.bg_statusline },
      MiniStatuslineFileinfo = { fg = c.green, bg = c.bg_status_alt },

      MiniStatuslineInactive = { fg = c.fg_gutter, bg = c.bg_status_alt, bold = bold },
    }
  else
    return {
      MiniStatuslineModeNormal = {
        fg = c.lualine.normal_fg,
        bg = c.lualine.normal_bg,
        bold = bold,
      },
      MiniStatuslineModeInsert = { fg = c.black, bg = c.yellow_alt, bold = bold },
      MiniStatuslineModeVisual = { fg = c.white, bg = c.purple, bold = bold },
      MiniStatuslineModeReplace = { fg = c.white, bg = c.red, bold = bold },
      MiniStatuslineModeCommand = { fg = c.lualine.command_fg, bg = c.black, bold = bold },
      MiniStatuslineModeOther = { fg = c.blue, bg = c.black, bold = bold },

      MiniStatuslineDevinfo = { fg = c.fg_sidebar, bg = c.bg_status_alt },
      MiniStatuslineFilename = { fg = c.fg_statusline, bg = c.bg_statusline },
      MiniStatuslineFileinfo = { fg = c.fg_sidebar, bg = c.bg_status_alt },

      MiniStatuslineInactive = { fg = c.fg_gutter, bg = c.bg_status_alt, bold = bold },
    }
  end
end

return M
