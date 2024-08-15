local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    FlashBackdrop = { fg = c.grey_medium }, -- muted area
    FlashCurrent = { fg = c.yellow, bg = c.black, bold = true }, -- current match
    FlashLabel = { fg = c.black, bg = c.magenta }, -- jump label
    FlashMatch = { fg = c.fg, bg = c.magenta }, -- search matches
    FlashPromptIcon = { fg = c.orange }, -- promp ticon

    -- FlashCursor = "Cursor", -- cursor
    -- FlashPrompt = "MsgArea", -- prompt
    -- FlashMatch = "Search", -- search matches
  }
end

return M
