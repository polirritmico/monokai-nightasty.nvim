local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    RainbowDelimiterRed = { fg = c.magenta },
    RainbowDelimiterOrange = { fg = c.orange },
    RainbowDelimiterYellow = { fg = c.yellow },
    RainbowDelimiterGreen = { fg = c.green },
    RainbowDelimiterBlue = { fg = c.blue_alt },
    RainbowDelimiterViolet = { fg = c.purple },
    RainbowDelimiterCyan = { fg = c.blue },
  }
end

return M
