local config = require("monokai-nightasty.config")
local dark_style = config.options.lualine_style == "dark"
    or config.options.lualine_style == "toggle" and not config.is_light()

local monokai_nightasty = {}

if dark_style then
    local c = require("monokai-nightasty.colors").setup({force_style = "dark"})

    monokai_nightasty.normal = {
        a = { fg = c.black, bg = c.green_light },
        b = { fg = c.green_light, bg = c.bg_status_alt },
        c = { fg = c.fg_sidebar, bg = c.bg_statusline },
    }

    monokai_nightasty.insert = {
        a = { fg = c.black, bg = c.yellow_light },
        b = { fg = c.yellow_light, bg = c.bg_status_alt },
    }

    monokai_nightasty.command = {
        a = { fg = c.green_light, bg = c.black },
        b = { fg = c.green_light, bg = c.bg_status_alt },
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
        a = { fg = c.green_light, bg = c.black },
        b = { fg = c.green_light, bg = c.bg_status_alt },
    }

    monokai_nightasty.inactive = {
        a = { fg = c.blue_light, bg = c.bg_dark },
        b = { fg = c.fg_gutter, bg = c.bg_dark, gui = "bold" },
        c = { fg = c.grey, bg = c.bg_dark },
    }
else
    local c = require("monokai-nightasty.colors").setup({force_style = "light"})

    monokai_nightasty.normal = {
        a = { fg = c.white, bg = c.blue_light },
        b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
        c = { fg = c.fg_sidebar, bg = c.bg_statusline },
    }

    monokai_nightasty.insert = {
        a = { fg = c.black, bg = c.yellow_light },
        b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    monokai_nightasty.command = {
        a = { fg = c.green_unchanged, bg = c.black },
        b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    monokai_nightasty.visual = {
        a = { fg = c.white, bg = c.purple },
        b = { fg = c.fg, bg = c.bg_status_alt },
    }

    monokai_nightasty.replace = {
        a = { fg = c.white, bg = c.red },
        b = { fg = c.red, bg = c.bg_status_alt },
    }

    monokai_nightasty.terminal = {
        a = { fg = c.green_unchanged, bg = c.black },
        b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    monokai_nightasty.inactive = {
        a = { fg = c.blue_light, bg = c.bg_status_alt },
        b = { fg = c.fg_gutter, bg = c.bg_status_alt, gui = "bold" },
        c = { fg = c.grey, bg = c.bg_status_alt },
    }
end

if config.options.lualine_bold then
    for _, mode in pairs(monokai_nightasty) do
        mode.a.gui = "bold"
    end
end

return monokai_nightasty
