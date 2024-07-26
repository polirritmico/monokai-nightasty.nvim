local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
  return {
    NeoTreeDirectoryIcon = { fg = c.blue },
    NeoTreeDirectoryName = { fg = c.fg },
    NeoTreeGitDeleted = { fg = c.git.delete },
    NeoTreeGitModified = { fg = c.git.change },
    NeoTreeGitAdded = { fg = c.git.add },
    NeoTreeIndentMarkder = { fg = c.fg_gutter },
    NeoTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC = "NeoTreeNormal",
    NeoTreeFileNameOpened = { fg = c.orange },
    NeoTreeRootName = { fg = c.magenta, italic = true },
    NeoTreeDimText = { fg = c.fg_gutter },
    NeoTreeWinSeparator = {
      fg = opts.hl_styles.sidebars == "transparent" and c.border or c.bg_sidebar,
      bg = c.bg_sidebar,
    },
  }
end

return M
