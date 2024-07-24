local M = {}

M.url = "https://github.com/echasnovski/mini.hipatterns"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    MiniHipatternsFixme = { fg = c.white, bg = c.magenta, bold = true },
    MiniHipatternsHack = { fg = c.black, bg = c.warning, bold = true },
    MiniHipatternsNote = { fg = c.black, bg = c.info, bold = true },
    MiniHipatternsTodo = { fg = c.black, bg = c.green, bold = true },
  }
end

return M
