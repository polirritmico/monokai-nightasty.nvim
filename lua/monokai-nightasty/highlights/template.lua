local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/account/repo"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local ret = {
    Name1 = { fg = c.color, bg = c.color },
    Name2 = { fg = utils.darken(c.color, 0.5), style = opts.hl_styles.comments },
  }

  for i, color in ipairs(c.rainbow) do
    ret["Highlight" .. i] = { fg = color, bg = c.rainbow_bg[i] }
  end

  return ret
end

return M
