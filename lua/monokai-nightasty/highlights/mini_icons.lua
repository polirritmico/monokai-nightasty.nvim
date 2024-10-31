local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    MiniIconsAzure = { fg = c.info },
    MiniIconsBlue = { fg = c.blue_alt },
    MiniIconsCyan = { fg = c.blue },
    MiniIconsGreen = { fg = c.green },
    MiniIconsGrey = { fg = c.grey_light },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.purple },
    MiniIconsRed = { fg = c.magenta },
    MiniIconsYellow = { fg = c.yellow },
  }
end

return M
