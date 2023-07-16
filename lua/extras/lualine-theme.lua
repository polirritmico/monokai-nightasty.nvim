-- =============================================================================
-- Monokai Lualine theme
-- Based on vim-monokai-tasty colorscheme
-- =============================================================================

print("LOADED from lualine-theme.lua")

-- TODO: Replace with require palette
-- local base_style = require("palette.base-style")
-- local c = base_style.colors
-- local f = base_style.formats
local c = {
    charcoal = "#262626",
    dark_grey = "#5f5F5F",
    darker_gray = "#444444",
    light_blue = "#62D8F1",
    light_charcoal = "#2B2B2B",
    light_green = "#A4E400",
    light_grey = "#BCBCBC",
    magenta = "#FC1A70",
    purple = "#AC7CFF",
    yellow = "#FFFF87",
}
local f = { gui = "bold" }

local monokai_tasty = {
  insert = {
    b = { fg = c.charcoal, bg = c.light_green },
    c = { fg = c.light_blue, bg = c.darker_gray },
    a = { fg = c.light_green, bg = c.darker_gray , gui = f.bold },
  },
  inactive = {
    b = { fg = c.light_grey, bg = c.dark_grey },
    c = { fg = c.dark_grey, bg = c.light_charcoal },
    a = { fg = c.charcoal, bg = c.dark_grey , gui = f.bold },
  },
  replace = {
    b = { fg = c.charcoal, bg = c.magenta },
    c = { fg = c.magenta, bg = c.darker_gray },
    a = { fg = c.magenta, bg = c.darker_gray , gui = f.bold },
  },
  visual = {
    b = { fg = c.charcoal, bg = c.purple },
    c = { fg = c.purple, bg = c.darker_gray },
    a = { fg = c.purple, bg = c.darker_gray , gui = f.bold },
  },
  normal = {
    b = { fg = c.charcoal, bg = c.yellow },
    c = { fg = c.yellow, bg = c.darker_gray },
    a = { fg = c.yellow, bg = c.darker_gray , gui = f.bold },
  },
  command = {
    b = { fg = c.charcoal, bg = c.light_blue },
    a = { fg = c.light_blue, bg = c.darker_gray , gui = f.bold },
  },
}

return monokai_tasty
