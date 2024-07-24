local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText = { fg = c.grey_medium, italic = true }, -- Experimental. hl must be defined by the user

    -- Left side
    CmpItemAbbr = { fg = c.fg, bg = c.none }, -- The suggestions
    CmpItemAbbrMatch = { fg = c.magenta, bg = c.none }, -- The current matches with the suggestions
    CmpItemAbbrMatchFuzzy = { fg = c.magenta, bg = c.none }, -- Matches ahead current
    CmpItemAbbrDeprecated = { fg = c.fg_gutter, strikethrough = true }, -- Deprecated suggestions

    CmpItemKindCodeium = "KindConceal",
    CmpItemKindCopilot = "KindConceal",
    CmpItemKindDefault = "KindConceal",

    -- Middle
    CmpItemMenu = { fg = c.comment }, -- The [source of the suggestion, LSP, luasnip...]
  }

  require("monokai-nightasty.highlights.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
