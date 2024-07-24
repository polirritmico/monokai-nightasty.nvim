local M = {}

M.url = "https://github.com/justinmk/vim-dirvish"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    DirvishSuffix = { fg = c.grey_medium },
    DirvishPathTail = { fg = c.blue },
    DirvishArg = { fg = c.yellow, bg = c.grey_medium },
  }
end

return M
