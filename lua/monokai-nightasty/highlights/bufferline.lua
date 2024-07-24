local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    BufferLineIndicatorSelected = { fg = c.git.change }, -- current tab indicator
  }
end

return M
