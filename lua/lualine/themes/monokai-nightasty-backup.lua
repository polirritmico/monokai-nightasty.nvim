local colors = require("monokai-nightasty.colors").setup({ transform = true })
local config = require("monokai-nightasty.config").options

local monokai_nightasty = {}

monokai_nightasty.normal = {
    a = { fg = colors.black, bg = colors.green },
    b = { fg = colors.green, bg = colors.charcoal_light },
    c = { fg = colors.fg_sidebar, bg = colors.bg_statusline },
}

monokai_nightasty.insert = {
    a = { fg = colors.black, bg = colors.yellow_alt },
    b = { fg = colors.yellow_alt, bg = colors.charcoal_light },
}

monokai_nightasty.command = {
    a = { fg = colors.green, bg = colors.black },
    b = { fg = colors.green, bg = colors.charcoal_light },
}

monokai_nightasty.visual = {
    a = { fg = colors.black, bg = colors.purple },
    b = { fg = colors.fg, bg = colors.charcoal_light },
}

monokai_nightasty.replace = {
    a = { fg = colors.black, bg = colors.red },
    b = { fg = colors.red, bg = colors.charcoal_light },
}

monokai_nightasty.terminal = {
    a = { fg = colors.green, bg = colors.black },
    b = { fg = colors.green, bg = colors.charcoal_light },
}

monokai_nightasty.inactive = {
    a = { fg = colors.blue, bg = colors.bg_dark },
    b = { fg = colors.fg_gutter, bg = colors.bg_dark, gui = "bold" },
    c = { fg = colors.grey, bg = colors.bg_dark },
}

if config.lualine_bold then
    for _, mode in pairs(monokai_nightasty) do
        mode.a.gui = "bold"
    end
end

return monokai_nightasty
