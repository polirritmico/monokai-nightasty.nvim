local M = {}

M.url = "https://github.com/nvim-tree/nvim-tree.lua"

---@type monokai.HighlightsFn
function M.get(c, opts)
  return {
    NvimTreeFolderIcon = { fg = c.blue, bg = c.none },
    NvimTreeFolderName = { fg = c.fg },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC = "NvimTreeNormal",
    NvimTreeOpenedFile = { bg = c.bg_highlight },
    NvimTreeOpenedFolderName = { fg = c.fg, bold = true },
    NvimTreeRootFolder = { fg = c.magenta, italic = true },
    NvimTreeSpecialFile = { fg = c.green, underline = true },
    NvimTreeSymlink = { fg = c.blue },
    NvimTreeWinSeparator = {
      fg = opts.hl_styles.sidebars == "transparent" and c.border or c.bg_sidebar,
      bg = c.bg_sidebar,
    },
  }
end

return M
