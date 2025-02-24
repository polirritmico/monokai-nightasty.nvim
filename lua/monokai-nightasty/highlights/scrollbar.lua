local M = {}

---nvim-scrollbar overwrites existing highlights by default. To prevent this,
---set the `set_highlights` field in nvim-scrollbar's `opts` table to `false`.
M.url = "https://github.com/petertriho/nvim-scrollbar"

---@type monokai.HighlightsFn
function M.get(c)
  local bg = c.bg_highlight

  return {
    ScrollbarCursor = { fg = c.fg_dark, bg = bg },
    ScrollbarCursorHandle = { fg = c.grey_lighter, bg = bg },
    ScrollbarError = { fg = c.error, bg = c.none },
    ScrollbarErrorHandle = { fg = c.error, bg = bg },
    ScrollbarGitAdd = { fg = c.git.add, bg = c.none },
    ScrollbarGitAddHandle = { fg = c.git.add, bg = bg },
    ScrollbarGitChange = { fg = c.git.change, bg = c.none },
    ScrollbarGitChangeHandle = { fg = c.git.change, bg = bg },
    ScrollbarGitDelete = { fg = c.git.delete, bg = c.none },
    ScrollbarGitDeleteHandle = { fg = c.git.delete, bg = bg },
    ScrollbarHandle = { fg = c.none, bg = bg },
    ScrollbarHint = { fg = c.hint, bg = c.none },
    ScrollbarHintHandle = { fg = c.hint, bg = bg },
    ScrollbarInfo = { fg = c.info, bg = c.none },
    ScrollbarInfoHandle = { fg = c.info, bg = bg },
    ScrollbarMisc = { fg = c.fg, bg = c.none },
    ScrollbarMiscHandle = { fg = c.yellow, bg = bg },
    ScrollbarSearch = { fg = c.purple, bg = c.none },
    ScrollbarSearchHandle = { fg = c.purple, bg = bg },
    ScrollbarWarn = { fg = c.warning, bg = c.none },
    ScrollbarWarnHandle = { fg = c.warning, bg = bg },
  }
end

return M
