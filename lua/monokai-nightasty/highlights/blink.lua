local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/saghen/blink.cmp"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    BlinkCmpKind = { fg = c.green, bg = c.none }, -- Kind icon/text of the completion item (default: "Special")
    BlinkCmpLabel = { fg = c.grey_light, bg = c.none }, -- Cmp menu entry main text
    BlinkCmpLabelDeprecated = { fg = c.comment, bg = c.none, strikethrough = true }, -- Deprecated entry label
    BlinkCmpLabelMatch = { fg = c.magenta }, -- Partial text matching
    BlinkCmpMenu = { fg = c.comment, bg = c.bg_float },
    BlinkCmpMenuBorder = { fg = c.grey_light, bg = c.bg_float },
    BlinkCmpMenuSelection = { bg = c.bg_statusline }, -- The current selected item
    BlinkCmpLabelDetail = { fg = c.comment, italic = true }, -- Label description of the completion item (default: "NonText")
    BlinkCmpLabelDescription = "BlinkCmpLabelDetail", -- Label description of the completion item (default: "NonText")
    BlinkCmpSource = { fg = c.comment, bg = c.none }, -- Source of the completion item (default: "NonText")
    BlinkCmpGhostText = { fg = c.grey_medium, bg = c.none }, -- Preview item with ghost text (default: "NonText")
  }
  -- BlinkCmpKind<kind>	Special	Kind icon/text of the completion item
  utils.generate_kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
