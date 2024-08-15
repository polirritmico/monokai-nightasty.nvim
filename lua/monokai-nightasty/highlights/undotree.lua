local M = {}

M.url = "https://github.com/mbbill/undotree"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    UndoTreeBranch = { fg = c.orange },
    UndoTreeCurrent = { fg = c.magenta, bg = c.grey_dark },
    UndoTreeHead = { fg = c.blue, bold = true },
    UndoTreeHelp = "Normal",
    UndoTreeHelpKey = { fg = c.purple },
    UndoTreeHelpTitle = { fg = c.magenta },
    UndoTreeNext = { fg = c.grey_light },
    UndoTreeNode = { fg = c.green },
    UndoTreeSavedBig = { fg = c.magenta, bold = true },
    UndoTreeSavedSmall = { fg = c.fg },
    UndoTreeSeq = "Comment",
    UndoTreeTimeStamp = "UndoTreeBranch",

    -- UndotreeNodeCurrent = "Statement",
    -- UndotreeFirstNode = "Function",
  }
end

return M
