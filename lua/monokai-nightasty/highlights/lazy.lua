local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    LazyCommitScope = { fg = c.orange, italic = true }, -- Git commit message. Scope string inside ()
    LazyCommitType = { fg = c.magenta, bold = true }, -- Git commit message type. Like fix, feat, refactor, etc.
    LazyProgressDone = "LazyCommitType",
    LazyProgressTodo = { fg = c.fg_gutter, bold = true },
    LazyReasonCmd = { fg = c.blue },
    LazyReasonEvent = { fg = c.orange },
    LazyReasonSource = { fg = c.yellow },
  }
end

return M
