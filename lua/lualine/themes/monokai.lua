local colors = require("monokai.colors").setup({ transform = true })
local config = require("monokai.config").options

local monokai = {}

monokai.normal = {
  a = { bg = colors.green_light, fg = colors.black },
  b = { bg = colors.charcoal_light, fg = colors.green_light },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

monokai.insert = {
  a = { bg = colors.yellow_light, fg = colors.black },
  b = { bg = colors.charcoal_light, fg = colors.yellow_light },
}

monokai.command = {
  a = { bg = colors.yellow_light, fg = colors.black },
  b = { bg = colors.charcoal_light, fg = colors.yellow_light },
}

monokai.visual = {
  a = { bg = colors.purple, fg = colors.black },
  b = { bg = colors.charcoal_light, fg = colors.fg },
}

monokai.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.charcoal_light, fg = colors.red },
}

monokai.terminal = {
  a = {bg = colors.green_alt, fg = colors.black },
  b = {bg = colors.charcoal_light, fg=colors.green_alt },
}

monokai.inactive = {
  a = { bg = colors.bg_dark, fg = colors.blue_light },
  b = { bg = colors.bg_dark, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_dark, fg = colors.fg_gutter },
}

if config.lualine_bold then
  for _, mode in pairs(monokai) do
    mode.a.gui = "bold"
  end
end

return monokai
