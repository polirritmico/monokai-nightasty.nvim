local M = {}

function M.get()
  local c, opts = require("monokai-nightasty.colors").setup({ style = "dark" })

  local hl_lualine = {}

  hl_lualine.normal = {
    a = { fg = c.lualine.normal_fg, bg = c.lualine.normal_bg },
    b = { fg = c.green, bg = c.bg_status_alt },
    c = { fg = c.fg_statusline, bg = c.bg_statusline },
  }

  hl_lualine.insert = {
    a = { fg = c.black, bg = c.yellow_alt },
    b = { fg = c.yellow_alt, bg = c.bg_status_alt },
  }

  hl_lualine.command = {
    a = { fg = c.green, bg = c.black },
    b = { fg = c.green, bg = c.bg_status_alt },
  }

  hl_lualine.visual = {
    a = { fg = c.black, bg = c.purple },
    b = { fg = c.fg, bg = c.bg_status_alt },
  }

  hl_lualine.replace = {
    a = { fg = c.black, bg = c.red },
    b = { fg = c.red, bg = c.bg_status_alt },
  }

  hl_lualine.terminal = {
    a = { fg = c.green, bg = c.black },
    b = { fg = c.green, bg = c.bg_status_alt },
  }

  hl_lualine.inactive = {
    a = { fg = c.blue, bg = c.bg_dark },
    b = { fg = c.fg_gutter, bg = c.bg_dark, gui = "bold" },
    c = { fg = c.grey, bg = c.bg_dark },
  }

  if opts.lualine_bold then
    for _, mode in pairs(hl_lualine) do
      mode.a.gui = "bold"
    end
  end

  return hl_lualine
end

return M.get()
