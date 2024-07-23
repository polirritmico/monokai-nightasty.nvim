local M = {}

function M.get()
  local c, opts = require("monokai-nightasty.colors").setup()

  local hl_lualine = {}

  hl_lualine.normal = {
    a = { fg = c.lualine.normal_fg, bg = c.lualine.normal_bg },
    b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    c = { fg = c.fg_statusline, bg = c.bg_statusline },
  }

  hl_lualine.insert = {
    a = { fg = c.black, bg = c.yellow_alt },
    b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
  }

  hl_lualine.command = {
    a = { fg = c.green_unchanged, bg = c.black },
    b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
  }

  hl_lualine.visual = {
    a = { fg = c.white, bg = c.purple },
    b = { fg = c.purple, bg = c.bg_status_alt },
  }

  hl_lualine.replace = {
    a = { fg = c.white, bg = c.red },
    b = { fg = c.red, bg = c.bg_status_alt },
  }

  hl_lualine.terminal = {
    a = { fg = c.green_unchanged, bg = c.black },
    b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
  }

  hl_lualine.inactive = {
    a = { fg = c.blue, bg = c.bg_status_alt },
    b = { fg = c.fg_gutter, bg = c.bg_status_alt, gui = "bold" },
    c = { fg = c.grey, bg = c.bg_status_alt },
  }

  if opts.lualine_bold then
    for _, mode in pairs(hl_lualine) do
      mode.a.gui = "bold"
    end
  end

  return hl_lualine
end

return M.get()
