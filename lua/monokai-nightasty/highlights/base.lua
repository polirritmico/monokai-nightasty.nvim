local dark = require("monokai-nightasty.utils").darken

local M = {}

M.url = "https://github.com/neovim/neovim/blob/master/src/nvim/highlight_group.c"

---@type monokai.HighlightsFn
function M.get(c, opts)
  return {
    ColorColumn = { bg = c.bg_columns }, -- used for the columns set with 'colorcolumn'
    Comment = { fg = c.comment, style = opts.hl_styles.comments }, -- any comment
    Conceal = { fg = c.grey_light }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    CurSearch = "IncSearch",
    Cursor = { fg = c.bg, bg = c.blue }, -- character under the cursor
    CursorColumn = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorIM = { fg = c.bg, bg = c.blue }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr = { fg = c.yellow }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    DiffAdd = { fg = c.green, bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { fg = c.magenta, bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    Directory = { fg = c.purple }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = c.grey_darker }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = c.white, bg = c.red }, -- error messages on the command line
    FloatBorder = { fg = c.border_highlight, bg = c.bg_float },
    FloatTitle = { fg = c.border_highlight, bg = c.bg_float },
    FoldColumn = { fg = c.orange, bg = opts.transparent and c.none or c.bg_float }, -- used when foldcolumn ~= 0
    Folded = { fg = c.blue, bg = c.bg_float, italic = true }, -- line used for closed folds
    IncSearch = { fg = c.fg_search, bg = c.purple, bold = true }, -- 'IncSearch' highlighting; also used for the text replaced with ":s///c"
    LineNr = { fg = c.grey_dark }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrBe = { fg = c.green },
    MatchParen = { fg = c.magenta, bold = true, underline = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg = { fg = c.green }, -- |more-prompt|
    MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
    MsgSeparator = { sp = c.border, underline = true }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    NonText = { fg = c.grey_darker }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg, bg = opts.transparent and c.none or c.bg }, -- normal text
    NormalFloat = { fg = c.fg_float, bg = c.bg_float }, -- Normal text in floating windows.
    NormalNC = {
      fg = c.fg,
      bg = opts.transparent and c.none or opts.dim_inactive and c.bg_dark or c.bg,
    }, -- normal text in NC (non-current windows)
    NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
    Pmenu = { fg = c.fg, bg = c.bg_popup }, -- Popup/wildMenu: normal item.
    PmenuSbar = { bg = c.bg_menuselbar }, -- bg = c.grey -- Popup/WildMenu: scrollbar.
    PmenuSel = { fg = c.magenta, bg = c.bg_menusel }, -- Popup/WildMenu: selected item.
    PmenuThumb = { fg = c.grey_dark, bg = c.grey }, -- Popup/WildMenu: Thumb of the scrollbar.
    Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { fg = c.blue, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.black, bg = c.bg_search, bold = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SignColumn = { fg = c.fg_gutter, bg = opts.transparent and c.none or c.bg }, -- column where |signs| are displayed
    SignColumnSB = { fg = c.fg_gutter, bg = c.bg_sidebar }, -- column where |signs| are displayed
    SpecialKey = { fg = c.grey_medium }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Substitute = { fg = c.black, bg = c.green }, -- |:substitute| replacement text highlighting
    TabLine = { fg = c.grey_light, bg = c.bg_statusline }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.grey_darker }, -- tab pages line, where there are no labels
    TabLineSel = { bg = c.bg }, -- tab pages line, active tab page label
    Title = { fg = c.fg, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    VertSplit = { fg = c.border }, -- the column separating vertically split windows
    Visual = { bg = c.bg_visual }, -- Visual mode selection
    WarningMsg = { fg = c.warning }, -- warning messages { fg = c.white, bg = c.red },
    Whitespace = { fg = c.grey_darker }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WinBar = "StatusLine", -- window bar
    WinBarNC = "StatusLineNC", -- window bar in inactive windows
    WinSeparator = { fg = c.border }, -- the column separating vertically split windows
    lCursor = { fg = c.bg, bg = c.blue }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')

    Bold = { bold = true },
    Italic = { italic = true },
    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links

    Boolean = { fg = c.purple }, -- a boolean constant: TRUE, false
    Character = { fg = c.purple }, --  a character constant: 'c', '\n'
    Conditional = { fg = c.magenta }, -- if, then, else, endif, switch, etc.
    Constant = { fg = c.purple }, -- (preferred) any constant
    Debug = { fg = c.orange }, -- debugging statements
    Define = { fg = c.magenta }, -- preprocessor #define
    Delimiter = { fg = c.magenta }, -- character that needs attention
    Error = { fg = c.white, bg = c.red }, -- (preferred) any erroneous construct
    Exception = { fg = c.magenta }, --  try, catch, throw
    Float = { fg = c.purple }, -- a floating point constant: 2.3e10
    Function = { fg = c.green, style = opts.hl_styles.functions }, -- function name (also: methods for classes)
    Identifier = { fg = c.fg, style = opts.hl_styles.variables }, -- (preferred) any variable name
    Include = { fg = c.magenta }, -- preprocessor #include
    Keyword = { fg = c.magenta, style = opts.hl_styles.keywords }, -- any other keyword
    Label = { fg = c.yellow }, -- case, default, etc.
    Macro = { fg = c.magenta }, -- same as Define
    Operator = { fg = c.magenta }, -- "sizeof", "+", "*", etc.
    PreCondit = { fg = c.purple }, -- preprocessor #if, #else, #endif, etc.
    PreProc = { fg = c.magenta }, -- (preferred) generic Preprocessor
    Repeat = { fg = c.magenta }, -- for, do, while, etc.
    Special = { fg = c.purple }, -- (preferred) any special symbol
    Statement = { fg = c.magenta }, -- (preferred) any statement
    StorageClass = { fg = c.blue, italic = true }, -- static, register, volatile, etc.
    String = { fg = c.yellow }, --   a string constant: "this is a string"
    Structure = { fg = c.blue }, -- struct, union, enum, etc.
    Tag = { fg = c.purple }, -- you can use CTRL-] on this
    Todo = { fg = c.yellow, bg = c.grey_medium }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type = {}, -- (preferred) int, long, char, etc.
    Typedef = { fg = c.blue }, -- A typedef
    qfFileName = { fg = c.purple },
    qfLineNr = { fg = c.grey },

    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore| ?
    -- Number = { }, --   a number constant: 234, 0xff
    -- NvimInternalError = { fg = c.fg, bg = "#ff0000" }, -- hard red
    -- SpecialChar = { }, --  special character in a constant
    -- SpecialComment = { }, -- special things inside a comment
    -- TermCursor  = { fg = c.bg, bg = c.fg }, -- cursor in a focused terminal
    -- TermCursorNC= { fg = c.bg, bg = c.fg_dark }, -- cursor in an unfocused terminal

    -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticError = { fg = c.error },
    DiagnosticHint = { fg = c.hint },
    DiagnosticInfo = { fg = c.info },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticUnnecessary = { italic = true, undercurl = true, sp = c.grey_light }, -- e.g. unused variables

    DiagnosticVirtualTextError = { fg = c.error, bg = dark(c.error, 0.08) }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextHint = { fg = c.hint, bg = dark(c.hint, 0.08) }, -- Used for "Hint" diagnostic virtual text
    DiagnosticVirtualTextInfo = { fg = c.info, bg = dark(c.info, 0.08) }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = dark(c.warning, 0.08) }, -- Used for "Warning" diagnostic virtual text

    DiagnosticUnderlineError = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics

    -- Native LSP client

    LspCodeLens = { fg = dark(c.purple, 0.75), bg = dark(c.purple, 0.05), italic = true },
    LspCodeLensSeparator = { fg = c.purple, bg = dark(c.purple, 0.05), italic = true },
    LspInfoBorder = { fg = c.border_highlight, bg = c.bg_float },
    LspInlayHint = { fg = c.grey, italic = true },
    LspReferenceRead = "LspReferenceText",
    LspReferenceText = { bg = c.fg_gutter },
    LspReferenceWrite = "LspReferenceText",
    LspSignatureActiveParameter = { bg = c.bg_visual, bold = true },
    -- SnippetTabstop = "Visual",
  }
end

return M
