local M = {}

M.url = "https://github.com/folke/todo-comments.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    TodoBgFIX = { fg = c.white, bg = c.magenta, bold = true },
    TodoBgHACK = { fg = c.black, bg = c.orange, bold = true },
    TodoBgNOTE = { fg = c.black, bg = c.note, bold = true },
    TodoBgPERF = { fg = c.black, bg = c.blue, bold = true },
    TodoBgTEST = { fg = c.black, bg = c.green, bold = true },
    TodoBgTODO = { fg = c.bg_dark, bg = c.todo, bold = true },
    TodoBgWARN = { fg = c.black, bg = c.orange, bold = true },
    TodoFgFIX = { fg = c.magenta },
    TodoFgHACK = { fg = c.orange },
    TodoFgNOTE = { fg = c.note },
    TodoFgPERF = { fg = c.blue },
    TodoFgTEST = { fg = c.green },
    TodoFgTODO = { fg = c.todo },
    TodoFgWARN = { fg = c.orange },
    TodoSignHACK = "TodoFgHACK",
    TodoSignNOTE = "TodoFgNOTE",
    TodoSignPERF = "TodoFgPERF",
    TodoSignTEST = "TodoFgTEST",
    TodoSignTODO = "TodoFgTODO",
    TodoSignWARN = "TodoFgWARN",
  }
end

return M
