local util = require("monokai-nightasty.util")
local colors = require("monokai-nightasty.colors")

local M = {}
--
---@class Highlight
---@field fg string|nil
---@field bg string|nil
---@field sp string|nil
---@field style string|nil|Highlight

---@alias Highlights table<string,Highlight>

---@param palette ColorScheme|nil
---@return Theme
function M.setup(palette)
  local config = require("monokai-nightasty.config")
  local options = config.options
  options.transparent = options.transparent or false

  ---@class Theme
  ---@field highlights Highlights
  local theme = {
    config = options,
    colors = palette and palette or colors.setup(),
  }

  local c = theme.colors

  theme.highlights = {
    ColorColumn = { bg = c.bg_columns }, -- used for the columns set with 'colorcolumn'
    Comment = { fg = c.comment, style = options.hl_styles.comments }, -- any comment
    Conceal = {}, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    CurSearch = { link = "IncSearch" },
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
    Folded = { fg = c.blue, italic = true }, -- line used for closed folds
    FoldColumn = { fg = c.orange, bg = options.transparent and c.none or c.bg_float }, -- used when foldcolumn ~= 0
    IncSearch = { fg = c.fg_search, bg = c.purple, bold = true }, -- 'IncSearch' highlighting; also used for the text replaced with ":s///c"
    LineNr = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrBe = { fg = c.green },
    MatchParen = { fg = c.magenta, bold = true, underline = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg = { fg = c.green }, -- |more-prompt|
    MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
    MsgSeparator = { sp = c.border, underline = true }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    NonText = { fg = c.grey_darker }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg, bg = options.transparent and c.none or c.bg }, -- normal text
    NormalFloat = { fg = c.fg_float, bg = c.bg_float }, -- Normal text in floating windows.
    NormalNC = { fg = c.fg, bg = options.transparent and c.none or options.dim_inactive and c.bg_dark or c.bg }, -- normal text in non-current windows
    NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
    Pmenu = { fg = c.fg, bg = c.bg_popup }, -- Popup/wildMenu: normal item.
    PmenuSbar = { bg = c.bg_menuselbar }, -- bg = c.grey -- Popup/WildMenu: scrollbar.
    PmenuSel = { fg = c.magenta, bg = c.bg_menusel }, -- Popup/WildMenu: selected item.
    PmenuThumb = { fg = c.grey_dark, bg = c.grey }, -- Popup/WildMenu: Thumb of the scrollbar.
    Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.black, bg = c.bg_search, bold = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SignColumn = { fg = c.fg_gutter, bg = options.transparent and c.none or c.bg }, -- column where |signs| are displayed
    SignColumnSB = { fg = c.fg_gutter, bg = c.bg_sidebar }, -- column where |signs| are displayed
    SpecialKey = { fg = c.grey_medium }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Substitute = { fg = c.black, bg = c.green }, -- |:substitute| replacement text highlighting
    TabLine = { fg = c.fg_statusline, bg = c.bg_statusline, underline = true }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.grey_darker }, -- tab pages line, where there are no labels
    TabLineSel = { bg = c.bg }, -- tab pages line, active tab page label
    -- TermCursor  = { fg = c.bg, bg = c.fg }, -- cursor in a focused terminal
    -- TermCursorNC= { fg = c.bg, bg = c.fg_dark }, -- cursor in an unfocused terminal
    Title = { fg = c.fg, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    VertSplit = { fg = c.border }, -- the column separating vertically split windows
    Visual = { bg = c.bg_visual }, -- Visual mode selection
    WarningMsg = { fg = c.warning }, -- warning messages { fg = c.white, bg = c.red },
    WinBar = { link = "StatusLine" }, -- window bar
    WinBarNC = { link = "StatusLineNC" }, -- window bar in inactive windows
    Whitespace = { fg = c.grey_darker }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WinSeparator = { fg = c.border }, -- the column separating vertically split windows
    lCursor = { fg = c.bg, bg = c.blue }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')

    -- These groups are not listed as default vim groups, but they are defacto
    -- standard group names for syntax highlighting. Commented out groups should
    -- chain up to their "preferred" group by default. Uncomment and edit if you
    -- want more specific syntax highlighting.

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    Italic = { italic = true },

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
    Function = { fg = c.green, style = options.hl_styles.functions }, -- function name (also: methods for classes)
    Identifier = { fg = c.fg, style = options.hl_styles.variables }, -- (preferred) any variable name
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore| ?
    Include = { fg = c.magenta }, -- preprocessor #include
    Keyword = { fg = c.magenta, style = options.hl_styles.keywords }, -- any other keyword
    Label = { fg = c.yellow }, -- case, default, etc.
    Macro = { fg = c.magenta }, -- same as Define
    -- Number = { }, --   a number constant: 234, 0xff
    Operator = { fg = c.magenta }, -- "sizeof", "+", "*", etc.
    PreCondit = { fg = c.purple }, -- preprocessor #if, #else, #endif, etc.
    PreProc = { fg = c.magenta }, -- (preferred) generic Preprocessor
    Repeat = { fg = c.magenta }, -- for, do, while, etc.
    Special = { fg = c.purple }, -- (preferred) any special symbol
    -- SpecialChar = { }, --  special character in a constant
    -- SpecialComment = { }, -- special things inside a comment
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

    -- Diff
    diffAdded = { fg = c.git.add },
    diffRemoved = { fg = c.git.delete },
    diffChanged = { fg = c.git.change },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.orange },
    diffFile = { fg = c.fg },
    diffLine = { fg = c.purple },
    diffIndexLine = { fg = c.purple },
    diffSubname = { fg = c.yellow },

    -- git?
    gitcommitHeader = { fg = c.blue },
    gitcommitSelectedFile = { fg = c.yellow },
    gitcommitSummary = { fg = c.fg },
    gitcommitOverflow = { fg = c.magenta },

    debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = util.darken(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg_gutter }, -- used for highlighting "write" references

    DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary = { fg = c.grey_light, italic = true, undercurl = true }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { fg = c.error, bg = util.darken(c.error, 0.08) }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = util.darken(c.warning, 0.08) }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { fg = c.info, bg = util.darken(c.info, 0.08) }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { fg = c.hint, bg = util.darken(c.hint, 0.08) }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    -- LspSignatureActiveParameter = { bg = util.darken(c.bg_visual, 0.4), bold = true },
    -- LspCodeLens = { fg = c.comment },
    -- LspInlayHint = { bg = util.darken(c.blue7, 0.1), fg = c.grey_dark },
    LspInfoBorder = { fg = c.border_highlight, bg = c.bg_float },

    -- checkhealt
    helpCommand = { fg = c.blue, bg = c.bg_float }, -- command name/description
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green_alt },
    healthWarning = { fg = c.warning },

    -- TreeSitter
    Hlargs = { fg = c.yellow },

    --- Treesitter highlights
    -- from https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights

    -- Identifiers
    ["@variable"] = { fg = c.fg, style = options.hl_styles.variables }, -- any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = c.grey_light, italic = true }, -- built-in variable names (e.g. `this`, `self`)
    ["@variable.parameter"] = { fg = c.orange, italic = true }, -- parameters of a function
    ["@variable.member"] = { fg = c.fg }, -- object and struct fields

    ["@constant"] = { link = "Constant" }, -- constant identifiers
    ["@constant.builtin"] = { link = "Special" }, -- built-in constant values
    ["@constant.macro"] = { link = "Define" }, -- constants defined by the preprocessor

    ["@module"] = { link = "Include" }, -- modules or namespaces
    -- ["@module.builtin"] = {}, -- built-in modules or namespaces
    -- ["@label"] = {}, -- GOTO and other labels (e.g. `label:` in C), including heredoc labels

    -- Literals
    ["@string"] = { link = "String" }, -- string literals
    ["@string.documentation"] = {}, -- string documenting code (e.g. Python docstrings)
    ["@string.regexp"] = { fg = c.orange }, -- regular expressions
    ["@string.escape"] = { fg = c.purple }, -- escape sequences
    -- ["@string.special"] = {}, -- other special strings (e.g. dates)
    -- ["@string.special.symbol"] = {}, -- symbols or atoms
    -- ["@string.special.url"] = {}, -- URIs (e.g. hyperlinks)
    -- ["@string.special.path"] = {}, -- filenames

    ["@character"] = { link = "Character" }, -- character literals
    ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

    ["@boolean"] = { link = "Boolean" }, -- boolean literals
    ["@number"] = { link = "Number" }, -- numeric literals
    ["@number.float"] = { link = "Float" }, -- floating-point number literals

    -- Types
    ["@type"] = { fg = c.blue }, -- type or class definitions and annotations
    ["@type.builtin"] = { fg = c.blue, italic = true }, -- built-in types
    ["@type.definition"] = { link = "Typedef" }, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    ["@type.qualifier"] = { link = "@keyword" }, -- type qualifiers (e.g. `const`)

    ["@attribute"] = { link = "PreProc" }, -- attribute annotations (e.g. Python decorators)
    ["@attribute.builtin"] = { fg = c.magenta, italic = true }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@property"] = { fg = c.fg_dark }, -- the key in key/value pairs

    -- Functions
    ["@function"] = { link = "Function" }, -- function definitions
    ["@function.builtin"] = { fg = c.green }, -- built-in functions
    ["@function.call"] = { link = "@function" }, -- function calls
    ["@function.macro"] = { link = "Macro" }, -- preprocessor macros

    ["@function.method"] = { link = "Function" }, -- method definitions
    ["@function.method.call"] = { link = "@function.method" }, -- method calls

    ["@constructor"] = { fg = c.blue, italic = true }, -- constructor calls and definitions
    ["@operator"] = { link = "Operator" }, -- symbolic operators (e.g. `+` / `*`)

    -- Keywords
    ["@keyword"] = { fg = c.magenta, style = options.hl_styles.keywords }, -- keywords not fitting into specific categories
    ["@keyword.coroutine"] = { link = "@keyword" }, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ["@keyword.function"] = { fg = c.blue, italic = true }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.operator"] = { link = "Operator" }, -- operators that are English words (e.g. `and` / `or`)
    ["@keyword.import"] = { link = "Include" }, -- keywords for including modules (e.g. `import` / `from` in Python)
    ["@keyword.storage"] = { link = "StorageClass" }, -- modifiers that affect storage in memory or life-time
    ["@keyword.repeat"] = { link = "Repeat" }, -- keywords related to loops (e.g. `for` / `while`)
    ["@keyword.return"] = { link = "@keyword" }, -- keywords like `return` and `yield`
    ["@keyword.debug"] = { link = "Debug" }, -- keywords related to debugging
    ["@keyword.exception"] = { link = "Exception" }, -- keywords related to exceptions (e.g. `throw` / `catch`)

    ["@keyword.conditional"] = { link = "Conditional" }, -- keywords related to conditionals (e.g. `if` / `else`)
    ["@keyword.conditional.ternary"] = { link = "Conditional" }, -- ternary operator (e.g. `?` / `:`)

    ["@keyword.directive"] = { fg = util.darken(c.comment, 0.73), nocombine = true }, -- various preprocessor directives & shebangs
    ["@keyword.directive.define"] = { link = "Define" }, -- preprocessor definition directives

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.grey }, -- delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.bracket"] = { fg = c.magenta }, -- brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.special"] = { link = "Delimiter" }, -- special symbols (e.g. `{}` in string interpolation)

    -- Comments
    ["@comment"] = { link = "Comment" }, -- line and block comments
    ["@comment.documentation"] = { link = "Comment" }, -- comments documenting code

    -- ["@comment.error"] = { fg = c.bg, bg = c.error }, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED:`)
    -- ["@comment.warning"] = { fg = c.bg, bg = c.warning }, -- warning-type comments (e.g. `WARNING:`, `FIX:`, `HACK:`)
    -- ["@comment.todo"] = { fg = c.black, bg = c.todo, nocombine = true }, -- todo-type comments (e.g. `TODO:`, `WIP:`, `FIXME:`)
    -- ["@comment.note"] = { fg = c.bg, bg = c.note, nocombine = true }, -- note-type comments (e.g. `NOTE:`, `INFO:`, `XXX`)

    -- Markup
    ["@markup"] = { link = "@none" },

    ["@markup.strong"] = { bold = true }, -- bold text
    ["@markup.italic"] = { italic = true }, -- text with emphasis
    ["@markup.strikethrough"] = { strikethrough = true }, -- strikethrough text
    ["@markup.underline"] = { underline = true }, -- underlined text (only for literal underline markup!)

    ["@markup.heading"] = { link = "Title" }, -- headings, titles (including markers)
    ["@markup.heading.1.marker"] = { link = "@tag" }, -- #, <h1>, <h2>, etc.
    ["@markup.heading.2.marker"] = { link = "@tag" },
    ["@markup.heading.3.marker"] = { link = "@tag" },
    ["@markup.heading.4.marker"] = { link = "@tag" },
    ["@markup.heading.5.marker"] = { link = "@tag" },
    ["@markup.heading.6.marker"] = { link = "@tag" },

    ["@markup.quote"] = { fg = c.fg, bg = c.fg_gutter, italic = true }, -- block quotes
    ["@markup.math"] = { link = "Special" }, -- math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.environment"] = { link = "Macro" }, -- environments (e.g. in LaTeX)
    ["@markup.environment.name"] = { link = "Type" },

    ["@markup.link"] = { fg = c.blue }, -- text references, footnotes, citations, etc.
    ["@markup.link.label"] = { fg = c.blue, underline = true }, -- link, reference descriptions
    ["@markup.link.label.symbol"] = { link = "Identifier" }, -- Non-url links
    ["@markup.link.url"] = { fg = c.orange }, -- URL-style links. e.g. ![text](url)

    ["@markup.raw"] = { link = "String" }, -- literal or verbatim text (e.g., inline code)
    ["@markup.raw.block"] = { fg = c.grey }, -- literal or verbatim text (e.g., inline code)

    ["@markup.list"] = { fg = c.magenta }, -- list markers
    ["@markup.list.checked"] = { fg = c.magenta }, -- checked todo-style list markers [x]
    ["@markup.list.unchecked"] = { fg = c.magenta }, -- unchecked todo-style list markers [ ]

    ["@diff.plus"] = { link = "DiffAdd" }, -- added text (for diff files)
    ["@diff.minus"] = { link = "DiffDelete" }, -- deleted text (for diff files)
    ["@diff.delta"] = { link = "DiffChange" }, -- changed text (for diff files)

    ["@tag"] = { fg = c.magenta }, -- xml tag names
    ["@tag.attribute"] = { fg = c.blue, italic = true }, -- xml tag attributes
    ["@tag.delimiter"] = { fg = c.grey_light }, -- xml tag delimiters

    -- Non-highlighting captures
    ["@none"] = {}, -- completely disable the highlight

    --- Markdown customs
    ["@markup.raw.markdown_inline"] = { fg = c.purple }, -- inline commands (e.g. `example`)
    ["@markup.raw.delimiter.markdown_inline"] = { fg = c.purple }, -- inline backticks -> `
    ["@lsp.type.class.markdown"] = { fg = c.yellow }, -- Check mark inside checklist ([x])

    --- LSP Semantic Token Groups
    ["@lsp.type.boolean"] = { link = "Boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.deriveHelper"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
    ["@lsp.type.generic"] = { link = "@variable" },
    -- ["@lsp.type.interface"] = { fg = util.lighten(c.blue1, 0.7) },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.lifetime"] = { link = "@storageclass" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "Operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "Operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
    -- ["@lsp.typemod.type.defaultLibrary"] = {},
    -- ["@lsp.typemod.typeAlias.defaultLibrary"] = {},
    ["@lsp.typemod.variable.callable"] = { link = "@function" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.typemod.variable.static"] = { link = "@constant" },

    -- Languages specifics
    ["@function.builtin.bash"] = { fg = c.blue },
    ["@constructor.lua"] = { fg = c.magenta },
    ["@lsp.typemod.variable.global.lua"] = { link = "@variable.builtin" },
    ["@type.qualifier.c_sharp"] = { fg = c.orange, italic = true },
    dosbatchError = { fg = c.red },
    ["@property.ini"] = { fg = c.orange },

    -- Others
    NvimInternalError = { fg = c.fg, bg = "#ff0000" }, -- hard red
    -- ALEErrorSign = { fg = c.error },
    -- ALEWarningSign = { fg = c.warning },
    -- DapStoppedLine = { bg = util.darken(c.warning, 0.1) }, -- Used for "Warning" diagnostic virtual text

    --- Plugins ----------------------------------------------------------------

    --- Aerial
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide = { fg = c.fg_gutter },
    AerialLine = { link = "LspInlayHint" },

    --- BufferLine
    BufferLineIndicatorSelected = { fg = c.git.change }, -- current tab indicator

    --- Cmp
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText = { fg = c.terminal_black }, -- Experimental. hl must be defined by the user
    -- Left side
    CmpItemAbbr = { fg = c.fg, bg = c.none }, -- The suggestions
    CmpItemAbbrMatch = { fg = c.magenta, bg = c.none }, -- The current matches with the suggestions
    CmpItemAbbrMatchFuzzy = { fg = c.magenta, bg = c.none }, -- Matches ahead current
    CmpItemAbbrDeprecated = { fg = c.fg_gutter, strikethrough = true }, -- Deprecated suggestions
    -- Middle
    CmpItemMenu = { fg = c.comment }, -- The [source of the suggestion, LSP, luasnip...]

    --- Dashboard
    -- General
    DashboardHeader = { fg = c.orange },
    DashboardFooter = { fg = c.comment, italic = true },
    -- Hyper theme
    DashboardFiles = { fg = c.grey_light },
    DashboardMruIcon = { fg = c.fg },
    DashboardMruTitle = { fg = c.magenta, bold = true },
    DashboardProjectIcon = { fg = c.blue },
    DashboardProjectTitle = { fg = c.magenta, bold = true },
    DashboardProjectTitleIcon = { fg = c.fg },
    -- DashboardShortCutIcon = { fg = c.purple },
    DashboardShortCut = { fg = c.purple },
    -- Doom theme
    DashboardDesc = { fg = c.magenta },
    DashboardIcon = { fg = c.fg },
    DashboardKey = { fg = c.purple },

    --- Dirvish
    DirvishSuffix = { fg = c.grey_medium },
    DirvishPathTail = { fg = c.blue },
    DirvishArg = { fg = c.yellow, bg = c.grey_medium },

    --- GitSigns :h gitsigns-highlight-groups
    GitSignsCurrentLineBlame = { fg = c.info, bg = c.bg_popup, italic = true },
    GitSignsAdd = { link = "diffAdded" },
    GitSignsChange = { link = "diffChanged" },
    GitSignsDelete = { link = "diffRemoved" },
    GitSignsAddInline = { fg = c.diff.add, bg = c.green },
    GitSignsDeleteInline = { fg = c.diff.delete, bg = c.magenta },
    GitSignsChangeInline = { fg = c.diff.change, bg = c.blue_alt },
    -- GitSignsChangedelete = {},
    -- GitSignsTopdelete = {},
    -- GitSignsUntracked = { },
    -- GitSignsAddNr = {},
    -- GitSignsChangeNr = {},
    -- GitSignsDeleteNr = {},
    -- GitSignsChangedeleteNr = {},
    -- GitSignsTopdeleteNr = {},
    -- GitSignsUntrackedNr = {},
    -- GitSignsAddLn = {},
    -- GitSignsChangeLn = {},
    -- GitSignsChangedeleteLn = {},
    -- GitSignsUntrackedLn = {},
    -- GitSignsAddPreview = {},
    -- GitSignsDeletePreview = {},
    -- GitSignsAddLnInline = {},
    -- GitSignsChangeLnInline = {},
    -- GitSignsDeleteLnInline = {},
    -- GitSignsDeleteVirtLn = {},
    -- GitSignsDeleteVirtLnInLine = {},
    -- GitSignsVirtLnum = {},

    --- headlines.nvim
    CodeBlock = { bg = c.bg_dark },
    Headline = { link = "Headline1" },
    Quote = { fg = c.bg, bg = c.fg_gutter },
    Dash = { fg = c.orange, bold = true },
    -- For Headline-i levels check the section after this table.

    --- indent-blankline
    IndentBlanklineChar = { fg = c.fg_gutter, nocombine = true },
    IndentBlanklineSpaceChar = { fg = c.fg_dark, nocombine = true },
    IndentBlanklineContextChar = { fg = c.blue, nocombine = true },
    IblIndent = { fg = c.fg_gutter, nocombine = true },
    IblWhitespace = { fg = c.fg_dark, nocombine = true },
    IblScope = { fg = c.blue, nocombine = true },

    --- Lazy
    LazyProgressDone = { fg = c.magenta, bold = true },
    LazyProgressTodo = { fg = c.fg_gutter, bold = true },

    --- Navic
    NavicText = { fg = c.fg, bg = c.none },
    NavicSeparator = { fg = c.fg, bg = c.none },

    --- Netrw
    netrwClassify = { fg = c.magenta },
    netrwCmdNote = { fg = c.fg_dark },
    netrwDir = { fg = c.yellow },
    netrwExe = { fg = c.orange },
    netrwHelpCmd = { fg = c.orange, bold = true },
    netrwLink = { fg = c.magenta },
    netrwList = { fg = c.yellow },
    netrwMarkFile = { fg = c.black, bg = c.orange, bold = true },
    netrwPlain = { fg = c.fg_dark },
    netrwQuickHelp = { fg = c.fg_dark, italic = true },
    netrwSymLink = { fg = c.blue, italic = true },
    netrwTreeBar = { fg = c.fg_gutter, nocombine = true },
    netrwVersion = { fg = c.orange, italic = true },

    --- Noice
    NoiceLspProgressTitle = { fg = c.orange, italic = true }, -- Progress operation text
    NoiceLspProgressSpinner = { fg = c.green }, -- Spinner and ticket
    NoiceFormatProgressDone = { fg = c.fg, bg = c.orange, bold = true }, -- bg = Bar color, fg = text above
    NoiceMini = { bg = c.bg_float },

    --- Notify
    NotifyBackground = { fg = c.fg, bg = c.bg },
    -- Border
    NotifyERRORBorder = { fg = util.darken(c.error, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyWARNBorder = { fg = util.darken(c.warning, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyINFOBorder = { fg = util.darken(c.info, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = util.darken(c.comment, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = util.darken(c.purple, 0.3), bg = options.transparent and c.none or c.bg },
    -- Icons
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.comment },
    NotifyTRACEIcon = { fg = c.purple },
    -- Title
    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },
    NotifyDEBUGTitle = { fg = c.comment },
    NotifyTRACETitle = { fg = c.purple },
    -- Body
    NotifyERRORBody = { link = "Normal" },
    NotifyWARNBody = { link = "Normal" },
    NotifyINFOBody = { link = "Normal" },
    NotifyDEBUGBody = { link = "Normal" },
    NotifyTRACEBody = { link = "Normal" },

    --- NvimTree
    NvimTreeFolderIcon = { fg = c.blue, bg = c.none },
    NvimTreeFolderName = { fg = c.fg },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeOpenedFile = { bg = c.bg_highlight },
    NvimTreeOpenedFolderName = { fg = c.fg, bold = true },
    NvimTreeRootFolder = { fg = c.magenta, italic = true },
    NvimTreeSpecialFile = { fg = c.green, underline = true },
    NvimTreeSymlink = { fg = c.blue },
    NvimTreeWinSeparator = {
      fg = options.hl_styles.sidebars == "transparent" and c.border or c.bg_sidebar,
      bg = c.bg_sidebar,
    },

    --- Neotree
    NeoTreeDirectoryIcon = { fg = c.blue },
    NeoTreeDirectoryName = { fg = c.fg },
    NeoTreeGitDeleted = { fg = c.git.delete },
    NeoTreeGitModified = { fg = c.git.change },
    NeoTreeGitAdded = { fg = c.git.add },
    NeoTreeIndentMarkder = { fg = c.fg_gutter },
    NeoTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeFileNameOpened = { fg = c.orange },
    NeoTreeRootName = { fg = c.magenta, italic = true },
    NeoTreeDimText = { fg = c.fg_gutter },
    NeoTreeWinSeparator = { link = "NvimTreeWinSeparator" },

    --- Rainbow Delimiters
    RainbowDelimiterRed = { fg = c.magenta },
    RainbowDelimiterOrange = { fg = c.orange },
    RainbowDelimiterYellow = { fg = c.yellow },
    RainbowDelimiterGreen = { fg = c.green },
    RainbowDelimiterBlue = { fg = c.blue_alt },
    RainbowDelimiterViolet = { fg = c.purple },
    RainbowDelimiterCyan = { fg = c.blue },

    --- Telescope
    TelescopeBorder = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal = { fg = c.grey_light, bg = c.bg_float },
    TelescopePromptPrefix = { fg = c.blue_alt },
    TelescopeSelection = { fg = c.fg, bg = c.bg_statusline },
    TelescopeSelectionCaret = { fg = c.magenta, bg = c.bg_statusline },

    --- Todo Comments
    TodoBgFIX = { fg = c.white, bg = c.magenta, bold = true },
    TodoBgHACK = { fg = c.black, bg = c.orange, bold = true },
    TodoBgNOTE = { fg = c.black, bg = c.note, bold = true },
    TodoBgPERF = { fg = c.black, bg = c.blue, bold = true },
    TodoBgTEST = { fg = c.black, bg = c.green, bold = true },
    TodoBgTODO = { fg = c.bg_dark, bg = c.todo, bold = true },
    TodoBgWARN = { fg = c.black, bg = c.orange, bold = true },
    TodoFgFIX = { fg = c.magenta },
    TodoFgHACK = { fg = c.orange },
    TodoFgNOTE = { fg = c.note },
    TodoFgPERF = { fg = c.blue },
    TodoFgTEST = { fg = c.green },
    TodoFgTODO = { fg = c.todo },
    TodoFgWARN = { fg = c.orange },
    TodoSignHACK = { link = "TodoFgHACK" },
    TodoSignNOTE = { link = "TodoFgNOTE" },
    TodoSignPERF = { link = "TodoFgPERF" },
    TodoSignTEST = { link = "TodoFgTEST" },
    TodoSignTODO = { link = "TodoFgTODO" },
    TodoSignWARN = { link = "TodoFgWARN" },

    --- TreeSitter Context
    TreesitterContext = { bg = c.bg_sidebar },
    TreesitterContextBottom = { sp = c.border, underline = true },
    TreesitterContextLineNumber = { fg = c.grey_medium, bg = c.bg_sidebar },
    TreesitterContextLineNumberBottom = { fg = c.yellow, sp = c.border, underline = true },

    --- WhichKey
    WhichKey = { fg = c.yellow },
    WhichKeyGroup = { fg = c.magenta },
    WhichKeySeparator = { fg = c.grey_light, italic = false },
    WhichKeyDesc = { fg = c.fg },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyBorder = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.grey_light },

    --- Misc
    -- For ItemKind plugins
    KindConceal = { fg = c.blue_alt },
    KindParameter = { fg = c.orange },
    KindText = { fg = c.fg },

    --- Not Implentend Plugins -------------------------------------------------

    --- Barbar
    -- BufferCurrent = { bg = c.bg, fg = c.fg },
    -- BufferCurrentERROR = { bg = c.bg, fg = c.error },
    -- BufferCurrentHINT = { bg = c.bg, fg = c.hint },
    -- -- BufferCurrentIcon = { bg = c.bg, fg = c.},
    -- BufferCurrentINFO = { bg = c.bg, fg = c.info },
    -- BufferCurrentWARN = { bg = c.bg, fg = c.warning },
    -- BufferCurrentIndex = { bg = c.bg, fg = c.info },
    -- BufferCurrentMod = { bg = c.bg, fg = c.warning },
    -- BufferCurrentSign = { bg = c.bg, fg = c.bg },
    -- BufferCurrentTarget = { bg = c.bg, fg = c.red },
    -- BufferAlternate = { bg = c.fg_gutter, fg = c.fg },
    -- BufferAlternateERROR = { bg = c.fg_gutter, fg = c.error },
    -- BufferAlternateHINT = { bg = c.fg_gutter, fg = c.hint },
    -- -- BufferAlternateIcon = { bg = c.fg_gutter, fg = c. },
    -- BufferAlternateIndex = { bg = c.fg_gutter, fg = c.info },
    -- BufferAlternateINFO = { bg = c.fg_gutter, fg = c.info },
    -- BufferAlternateMod = { bg = c.fg_gutter, fg = c.warning },
    -- BufferAlternateSign = { bg = c.fg_gutter, fg = c.info },
    -- BufferAlternateTarget = { bg = c.fg_gutter, fg = c.red },
    -- BufferAlternateWARN = { bg = c.fg_gutter, fg = c.warning },
    -- BufferVisible = { bg = c.bg_statusline, fg = c.fg },
    -- BufferVisibleERROR = { bg = c.bg_statusline, fg = c.error },
    -- BufferVisibleHINT = { bg = c.bg_statusline, fg = c.hint },
    -- -- BufferVisibleIcon = { bg = c.bg_statusline, fg = c. },
    -- BufferVisibleINFO = { bg = c.bg_statusline, fg = c.info },
    -- BufferVisibleWARN = { bg = c.bg_statusline, fg = c.warning },
    -- BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
    -- BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
    -- BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
    -- BufferVisibleTarget = { bg = c.bg_statusline, fg = c.red },
    -- BufferInactive = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.dark5, 0.8) },
    -- BufferInactiveERROR = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.error, 0.8) },
    -- BufferInactiveHINT = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.hint, 0.8) },
    -- -- BufferInactiveIcon = { bg = c.bg_statusline, fg = util.darken(c., 0.1) },
    -- BufferInactiveINFO = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.info, 0.8) },
    -- BufferInactiveWARN = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.warning, 0.8) },
    -- BufferInactiveIndex = { bg = util.darken(c.bg_highlight, 0.4), fg = c.dark5 },
    -- BufferInactiveMod = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.warning, 0.8) },
    -- BufferInactiveSign = { bg = util.darken(c.bg_highlight, 0.4), fg = c.bg },
    -- BufferInactiveTarget = { bg = util.darken(c.bg_highlight, 0.4), fg = c.red },
    -- BufferOffset = { bg = c.bg_statusline, fg = c.dark5 },
    -- BufferTabpageFill = { bg = util.darken(c.bg_highlight, 0.8), fg = c.dark5 },
    -- BufferTabpages = { bg = c.bg_statusline, fg = c.none },

    --- Flash
    -- FlashBackdrop = { fg = c.grey_dark },
    -- FlashMatch = { fg = c. }, -- search matches
    -- FlashCurrent = { fg = c. }, -- current match
    -- FlashLabel = { bg = c.magenta2, bold = true, fg = c.fg }, -- jump label
    -- FlashPrompt = {},
    -- FlashPromptIcon = {},
    -- FlashCursor = {},

    --- GitGutter
    -- GitGutterAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
    -- GitGutterChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
    -- GitGutterDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|
    -- GitGutterAddLineNr = { fg = c.gitSigns.add },
    -- GitGutterChangeLineNr = { fg = c.gitSigns.change },
    -- GitGutterDeleteLineNr = { fg = c.gitSigns.delete },

    --- Hop
    -- HopNextKey = { fg = c.magenta2, bold = true },
    -- HopNextKey1 = { fg = c.blue2, bold = true },
    -- HopNextKey2 = { fg = util.darken(c.blue2, 0.6) },
    -- HopUnmatched = { fg = c.grey_dark },

    --- Illuminate
    -- illuminatedWord = { bg = c.fg_gutter },
    -- illuminatedCurWord = { bg = c.fg_gutter },
    -- IlluminatedWordText = { bg = c.fg_gutter },
    -- IlluminatedWordRead = { bg = c.fg_gutter },
    -- IlluminatedWordWrite = { bg = c.fg_gutter },

    -- Leap
    -- LeapMatch = { bg = c.magenta, fg = c.fg, bold = true },
    -- LeapLabelPrimary = { fg = c.magenta, bold = true },
    -- LeapLabelSecondary = { fg = c.green, bold = true },
    -- LeapBackdrop = { fg = c.grey_dark },

    --- LspSaga
    -- DiagnosticWarning = { link = "DiagnosticWarn" },
    -- DiagnosticInformation = { link = "DiagnosticInfo" },
    -- LspFloatWinNormal = { bg = c.bg_float },
    -- LspFloatWinBorder = { fg = c.border_highlight },
    -- LspSagaBorderTitle = { fg = c.cyan },
    -- LspSagaHoverBorder = { fg = c.blue },
    -- LspSagaRenameBorder = { fg = c.green },
    -- LspSagaDefPreviewBorder = { fg = c.green },
    -- LspSagaCodeActionBorder = { fg = c.blue },
    -- LspSagaFinderSelection = { fg = c.bg_visual },
    -- LspSagaCodeActionTitle = { fg = c.blue1 },
    -- LspSagaCodeActionContent = { fg = c.purple },
    -- LspSagaSignatureHelpBorder = { fg = c.red },
    -- ReferencesCount = { fg = c.purple },
    -- DefinitionCount = { fg = c.purple },
    -- DefinitionIcon = { fg = c.blue },
    -- ReferencesIcon = { fg = c.blue },
    -- TargetWord = { fg = c.cyan },

    --- LspTrouble
    -- TroubleText = { fg = c.fg_dark },
    -- TroubleCount = { fg = c.magenta, bg = c.fg_gutter },
    -- TroubleNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },

    --- Mini
    -- MiniCompletionActiveParameter = { underline = true },
    -- MiniCursorword = { bg = c.fg_gutter },
    -- MiniCursorwordCurrent = { bg = c.fg_gutter },
    -- MiniIndentscopeSymbol = { fg = c.blue1, nocombine = true },
    -- MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
    -- MiniJump = { bg = c.magenta2, fg = "#ffffff" },
    -- MiniJump2dSpot = { fg = c.magenta2, bold = true, nocombine = true },
    -- MiniStarterCurrent = { nocombine = true },
    -- MiniStarterFooter = { fg = c.yellow, italic = true },
    -- MiniStarterHeader = { fg = c.blue },
    -- MiniStarterInactive = { fg = c.comment, style = options.styles.comments },
    -- MiniStarterItem = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    -- MiniStarterItemBullet = { fg = c.border_highlight },
    -- MiniStarterItemPrefix = { fg = c.warning },
    -- MiniStarterSection = { fg = c.blue1 },
    -- MiniStarterQuery = { fg = c.info },
    -- MiniStatuslineDevinfo = { fg = c.fg_dark, bg = c.bg_highlight },
    -- MiniStatuslineFileinfo = { fg = c.fg_dark, bg = c.bg_highlight },
    -- MiniStatuslineFilename = { fg = c.fg_dark, bg = c.fg_gutter },
    -- MiniStatuslineInactive = { fg = c.blue, bg = c.bg_statusline },
    -- MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow, bold = true },
    -- MiniStatuslineModeInsert = { fg = c.black, bg = c.green, bold = true },
    -- MiniStatuslineModeNormal = { fg = c.black, bg = c.blue, bold = true },
    -- MiniStatuslineModeOther = { fg = c.black, bg = c.teal, bold = true },
    -- MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = true },
    -- MiniStatuslineModeVisual = { fg = c.black, bg = c.magenta, bold = true },
    -- MiniSurround = { bg = c.orange, fg = c.black },
    -- MiniTablineCurrent = { fg = c.fg, bg = c.fg_gutter },
    -- MiniTablineFill = { bg = c.black },
    -- MiniTablineHidden = { fg = c.dark5, bg = c.bg_statusline },
    -- MiniTablineModifiedCurrent = { fg = c.warning, bg = c.fg_gutter },
    -- MiniTablineModifiedHidden = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
    -- MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_statusline },
    -- MiniTablineTabpagesection = { bg = c.bg_statusline, fg = c.none },
    -- MiniTablineVisible = { fg = c.fg, bg = c.bg_statusline },
    -- MiniTestEmphasis = { bold = true },
    -- MiniTestFail = { fg = c.red, bold = true },
    -- MiniTestPass = { fg = c.green, bold = true },
    -- MiniTrailspace = { bg = c.red },

    --- Neogit
    -- NeogitBranch = { fg = c.magenta },
    -- NeogitRemote = { fg = c.purple },
    -- NeogitHunkHeader = { bg = c.bg_highlight, fg = c.fg },
    -- NeogitHunkHeaderHighlight = { bg = c.fg_gutter, fg = c.blue },
    -- NeogitDiffContextHighlight = { bg = util.darken(c.fg_gutter, 0.5), fg = c.fg_dark },
    -- NeogitDiffDeleteHighlight = { fg = c.git.delete, bg = c.diff.delete },
    -- NeogitDiffAddHighlight = { fg = c.git.add, bg = c.diff.add },

    --- Neotest
    -- NeotestPassed = { fg = c.green },
    -- NeotestRunning = { fg = c.yellow },
    -- NeotestFailed = { fg = c.red },
    -- NeotestSkipped = { fg = c.blue },
    -- NeotestTest = { fg = c.fg_sidebar },
    -- NeotestNamespace = { fg = c.green_alt },
    -- NeotestFocused = { fg = c.yellow },
    -- NeotestFile = { fg = c.teal },
    -- NeotestDir = { fg = c.blue },
    -- NeotestBorder = { fg = c.blue },
    -- NeotestIndent = { fg = c.fg_sidebar },
    -- NeotestExpandMarker = { fg = c.fg_sidebar },
    -- NeotestAdapterName = { fg = c.purple, bold = true },
    -- NeotestWinSelect = { fg = c.blue },
    -- NeotestMarked = { fg = c.blue },
    -- NeotestTarget = { fg = c.blue },
    -- --[[ NeotestUnknown = {}, ]]

    --- Sneak
    -- Sneak = { fg = c.bg_highlight, bg = c.magenta },
    -- SneakScope = { bg = c.bg_visual },
  }

  -- Kind plugins
  local kinds_links = {
    Array = "@punctuation.bracket",
    Boolean = "Boolean",
    Class = "@type.builtin", -- "StorageClass" "@type",
    Codeium = "KindConceal",
    Color = "Special",
    Constant = "@constant",
    Constructor = "@constructor",
    Copilot = "KindConceal",
    Default = "@property", -- fg = c.fg_dark
    Enum = "@lsp.type.enum",
    EnumMember = "Structure", -- "@lsp.type.enumMember",
    Event = "Special",
    Field = "@variable.member",
    File = "Normal",
    Folder = "Directory",
    Function = "@function",
    Interface = "KindParameter", -- "@lsp.type.interface",
    Key = "@variable.member",
    Keyword = "@keyword",
    Method = "@function.method",
    Module = "Special",
    Namespace = "KindText",
    Null = "@constant.builtin",
    Number = "@number",
    Object = "@constant",
    Operator = "Operator",
    Package = "@module",
    Property = "@property",
    Reference = "@markup.link.url", -- @markup.link
    Snippet = "KindConceal", -- Conceal
    String = "@string",
    Struct = "Structure", -- "@lsp.type.struct",
    Text = "@markup",
    TypeParameter = "KindParameter",
    Unit = "Structure",
    Value = "KindParameter",
    Variable = "@variable",
  }
  local kind_plugins = {
    "Aerial%sIcon",
    "CmpItemKind%s",
    "NavicIcons%s",
    "NoiceCompletionItemKind%s",
  }

  for kind, link in pairs(kinds_links) do
    local base = "LspKind" .. kind
    theme.highlights[base] = { link = link }
    for _, plugin in pairs(kind_plugins) do
      theme.highlights[plugin:format(kind)] = { link = base }
    end
  end

  -- Rainbow headers
  if options.color_headers then
    for i, color in ipairs(c.rainbow) do
      -- Markdown, html
      theme.highlights["@markup.heading." .. i] = { fg = color, bold = true }
      theme.highlights["htmlH" .. i] = { fg = color, bold = true }
      -- Headline plugin
      theme.highlights["Headline" .. i] = { fg = color, bg = c.rainbow_bg[i], bold = true }
      theme.highlights["@OrgTSHeadlineLevel" .. i] = { bg = c.rainbow_bg[i], bold = true }
    end
  else
    for i = 1, 6 do
      -- Markdown, html
      theme.highlights["@markup.heading." .. i] = { link = "Title" }
      theme.highlights["htmlH" .. i] = { link = "Title" }
      -- Headline plugin
      theme.highlights["@OrgTSHeadlineLevel" .. i] = { bg = c.rainbow_bg[i], bold = true }
      theme.highlights["Headline" .. i] = { bg = c.bg_popup, bold = true }
    end
  end

  if not vim.diagnostic then
    local severity_map = {
      Error = "Error",
      Warn = "Warning",
      Info = "Information",
      Hint = "Hint",
    }
    local types = { "Default", "VirtualText", "Underline" }
    for _, type in ipairs(types) do
      for snew, sold in pairs(severity_map) do
        theme.highlights["LspDiagnostics" .. type .. sold] = {
          link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
        }
      end
    end
  end

  ---@type table<string, table>
  theme.defer = {}

  if options.hide_inactive_statusline then
    local inactive = { underline = true, bg = c.none, fg = c.bg, sp = c.border }

    -- StatusLineNC
    theme.highlights.StatusLineNC = inactive

    -- LuaLine
    for _, section in ipairs({ "a", "b", "c" }) do
      theme.defer["lualine_" .. section .. "_inactive"] = inactive
    end

    -- mini.statusline
    theme.highlights.MiniStatuslineInactive = inactive
  end

  -- Apply user configs
  options.on_highlights(theme.highlights, theme.colors)

  return theme
end

return M
