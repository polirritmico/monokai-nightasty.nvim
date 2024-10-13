local utils = require("monokai-nightasty.utils")
local dark = utils.darken

local M = {}

M.url = "https://github.com/NeogitOrg/neogit"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local diff_bg = opts.transparent and c.none or c.charcoal

  return {
    ---------------------------------------------------------------------------
    -- STATUS BUFFER
    NeogitBranch = { fg = c.green }, -- Local branches
    NeogitBranchHead = { fg = c.blue }, -- Accent highlight for current HEAD in LogBuffer
    -- NeogitFold = { bg = diff_bg }, -- Folded regions like unstaged changes
    NeogitObjectId = { fg = c.grey_light, italic = true }, -- SHA hash
    NeogitRemote = { fg = c.purple }, -- Remote branches
    NeogitSectionHeader = { fg = c.magenta }, -- status buffer section header
    NeogitSectionHeaderCount = { fg = c.grey_light }, -- The number, for sections with a number.
    NeogitStatusHEAD = { fg = c.orange }, -- The left text in the HEAD section
    NeogitSubtleText = "Comment", -- "Hint:" at top
    NeogitTagDistance = "NeogitSectionHeaderCount", -- Number of commits between the tag and HEAD
    NeogitTagName = { fg = c.blue_alt, bg = c.diff.change }, -- Closest Tag name
    NeogitWinSeparator = "WinSeparator",

    ---------------------------------------------------------------------------
    -- DIFFS
    NeogitHunkHeader = { fg = dark(c.blue, 0.7), bold = true },
    NeogitHunkHeaderHighlight = { fg = c.blue, bg = c.charcoal_light, bold = true },
    NeogitDiffAdd = { fg = dark(c.green, 0.7), bg = dark(c.diff.add, 0.5) },
    NeogitDiffAddHighlight = "DiffAdd",
    NeogitDiffContext = { fg = c.grey_light, bg = diff_bg },
    NeogitDiffContextHighlight = { fg = c.fg, bg = diff_bg },
    NeogitDiffDelete = { fg = dark(c.magenta, 0.7), bg = dark(c.diff.delete, 0.5) },
    NeogitDiffDeleteHighlight = "DiffDelete",

    NeogitDiffHeader = "NeogitBranchHead", -- Commit details diff header
    NeogitDiffAddCursor = { bg = c.bg_highlight }, -- This highlights apply only to the cursor line
    NeogitDiffContextCursor = "NeogitDiffAddCursor",
    NeogitDiffDeleteCursor = "NeogitDiffAddCursor",
    NeogitDiffHeaderCursor = "NeogitDiffAddCursor",
    NeogitHunkHeaderCursor = "NeogitDiffAddCursor",

    ---------------------------------------------------------------------------
    -- POPUPS MENU/HELP
    NeogitPopupSectionTitle = { fg = c.green }, -- applied to all section headers
    NeogitPopupActionKey = { fg = c.yellow }, -- Applied to key that triggers a function
    NeogitPopupConfigKey = "NeogitPopupActionKey", -- Applied to the key that triggers config
    NeogitPopupOptionKey = "NeogitPopupActionKey", -- Applied to the key that will trigger option
    NeogitPopupSwitchKey = "NeogitPopupActionKey", -- Applied to the key that will toggle switch
    NeogitPopupConfigEnabled = { fg = c.orange, italic = true }, -- Applied to enabled config value
    NeogitPopupOptionEnabled = "NeogitPopupConfigEnabled", -- Applied if option is set
    NeogitPopupSwitchEnabled = "NeogitPopupConfigEnabled", -- Applied to the flag if enabled
    NeogitPopupActionDisabled = { fg = c.grey, italic = true }, -- Applied to key when function is unimplemented
    NeogitPopupConfigDisabled = "NeogitPopupActionDisabled", -- Applied to config without value
    NeogitPopupOptionDisabled = "NeogitPopupActionDisabled", -- Applied if option has no value
    NeogitPopupSwitchDisabled = "NeogitPopupActionDisabled", -- Applied to the flag if disabled

    ---------------------------------------------------------------------------
    -- COMMIT BUFFER
    NeogitCommitViewDescription = { fg = c.orange },
    NeogitCommitViewHeader = { fg = c.purple, bg = c.bg_status_alt },
    NeogitDiffAdditions = { fg = c.git.add }, -- + symbols next to the file changes (commit view)
    NeogitDiffDeletions = { fg = c.git.delete }, -- - symbols next to the file changes (commit view)
    NeogitFilePath = { fg = c.blue_alt },

    ---------------------------------------------------------------------------
    -- COMMIT SELECT BUFFER
    NeogitFloatHeader = { fg = c.blue_alt, bg = c.charcoal, bold = true }, -- Foreground/Background for header text at top of win
    NeogitFloatHeaderHighlight = { fg = c.charcoal, bg = c.blue_alt, bold = true }, -- Emphasized text in header

    ---------------------------------------------------------------------------
    -- COMMAND HISTORY BUFFER
    NeogitCommandText = { fg = c.orange }, -- Git command that was run (expand with tab)
    NeogitCommandTime = "NeogitTagDistance", -- Execution time and terminal standard streams
    NeogitCommandCodeNormal = { fg = c.green }, -- Applied to a successful command's exit status (0)

    ---------------------------------------------------------------------------
    -- STATUS BUFFER FILE
    -- Applied to the label on the left of filenames. These highlight groups are
    -- not used directly, but linked to by other groups:
    NeogitChangeAdded = { fg = c.blue, italic = true },
    NeogitChangeDeleted = { fg = c.magenta, italic = true },
    NeogitChangeRenamed = { fg = c.orange, italic = true },
    NeogitChangeUpdated = { fg = c.yellow, italic = true },
    NeogitChangeCopied = { fg = c.purple, italic = true },
    NeogitChangeNewFile = { fg = c.blue_alt, italic = true },
    NeogitChangeModified = { fg = c.green, italic = true },

    ---------------------------------------------------------------------------
    -- LOG VIEW BUFFER
    NeogitGraphAuthor = { fg = c.magenta },
    NeogitPopupBranchName = { fg = c.magenta }, -- Applied to the current branch name for emphasis
    NeogitSignatureGood = { fg = c.green, bg = c.bg }, -- For highlighting the commit hash when
    NeogitSignatureBad = { fg = c.white, bg = c.red }, --show-signature is passed
    NeogitSignatureMissing = { fg = c.fg, bg = c.bg },
    NeogitSignatureNone = "Comment",

    -- Graph colors
    NeogitGraphBlack = { fg = c.black },
    NeogitGraphRed = { fg = c.red },
    NeogitGraphGreen = { fg = c.green },
    NeogitGraphYellow = { fg = c.yellow },
    NeogitGraphBlue = { fg = c.blue_alt },
    NeogitGraphPurple = { fg = c.purple },
    NeogitGraphCyan = { fg = c.blue },
    NeogitGraphWhite = { fg = c.white },
    NeogitGraphGray = { fg = c.grey },
    NeogitGraphOrange = { fg = c.orange },

    NeogitGraphBoldBlack = { fg = c.black, bold = true },
    NeogitGraphBoldRed = { fg = c.red, bold = true },
    NeogitGraphBoldGreen = { fg = c.green, bold = true },
    NeogitGraphBoldYellow = { fg = c.yellow, bold = true },
    NeogitGraphBoldBlue = { fg = c.blue_alt, bold = true },
    NeogitGraphBoldPurple = { fg = c.purple, bold = true },
    NeogitGraphBoldCyan = { fg = c.blue, bold = true },
    NeogitGraphBoldWhite = { fg = c.white, bold = true },
    NeogitGraphBoldGray = { fg = c.grey, bold = true },
    NeogitGraphBoldOrange = { fg = c.orange, bold = true },
  }
end

return M
