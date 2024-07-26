local M = {}

function M.get()
  local opts = require("monokai-nightasty.config").extend()
  opts.style = opts.lualine_style == "default" and vim.o.background or opts.lualine_style
  local c = require("monokai-nightasty.colors").setup(opts)

  local monokai_nightasty = {}

  if opts.style == "dark" then
    monokai_nightasty.normal = {
      a = { fg = c.lualine.normal_fg, bg = c.lualine.normal_bg },
      b = { fg = c.green, bg = c.bg_status_alt },
      c = { fg = c.fg_statusline, bg = c.bg_statusline },
    }

    monokai_nightasty.insert = {
      a = { fg = c.black, bg = c.yellow_alt },
      b = { fg = c.yellow_alt, bg = c.bg_status_alt },
    }

    monokai_nightasty.command = {
      a = { fg = c.green, bg = c.black },
      b = { fg = c.green, bg = c.bg_status_alt },
    }

    monokai_nightasty.visual = {
      a = { fg = c.black, bg = c.purple },
      b = { fg = c.fg, bg = c.bg_status_alt },
    }

    monokai_nightasty.replace = {
      a = { fg = c.black, bg = c.red },
      b = { fg = c.red, bg = c.bg_status_alt },
    }

    monokai_nightasty.terminal = {
      a = { fg = c.green, bg = c.black },
      b = { fg = c.green, bg = c.bg_status_alt },
    }

    monokai_nightasty.inactive = {
      a = { fg = c.blue, bg = c.bg_dark },
      b = { fg = c.fg_gutter, bg = c.bg_dark, gui = "bold" },
      c = { fg = c.grey, bg = c.bg_dark },
    }
  else
    monokai_nightasty.normal = {
      a = { fg = c.lualine.normal_fg, bg = c.lualine.normal_bg },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
      c = { fg = c.fg_statusline, bg = c.bg_statusline },
    }

    monokai_nightasty.insert = {
      a = { fg = c.black, bg = c.yellow_alt },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    monokai_nightasty.command = {
      a = { fg = c.lualine.command_fg, bg = c.black },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    monokai_nightasty.visual = {
      a = { fg = c.white, bg = c.purple },
      b = { fg = c.purple, bg = c.bg_status_alt },
    }

    monokai_nightasty.replace = {
      a = { fg = c.white, bg = c.red },
      b = { fg = c.red, bg = c.bg_status_alt },
    }

    monokai_nightasty.terminal = {
      a = { fg = c.lualine.command_fg, bg = c.black },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    monokai_nightasty.inactive = {
      a = { fg = c.blue, bg = c.bg_status_alt },
      b = { fg = c.fg_gutter, bg = c.bg_status_alt, gui = "bold" },
      c = { fg = c.grey, bg = c.bg_status_alt },
    }
  end

  if opts.lualine_bold then
    for _, mode in pairs(monokai_nightasty) do
      mode.a.gui = "bold"
    end
  end

  return monokai_nightasty
end

return M.get()
