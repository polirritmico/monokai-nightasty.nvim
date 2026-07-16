local M = {}

M.url = "https://github.com/nvim-mini/mini.notify"

---@type monokai.HighlightsFn
function M.get(c, opts)
  return {
    MiniNotifyBorder = "FloatBorder",
    MiniNotifyLspProgress = { fg = c.fg_dark, italic = opts.italics },
    MiniNotifyNormal = "NormalFloat",
    MiniNotifyTitle = { fg = c.magenta, bg = c.bg_float },
  }
end

return M
