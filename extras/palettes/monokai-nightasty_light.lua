local colors = {
  bg = "#ffffff",
  bg_dark = "#e1e1e1",
  bg_darker = "#d0d0d0",
  bg_float = "#dedede",
  bg_highlight = "#ebebeb",
  bg_menusel = "#ababab",
  bg_menuselbar = "#d5d5d5",
  bg_popup = "#dedede",
  bg_search = "#ff8f00",
  bg_sidebar = "#dedede",
  bg_status_alt = "#d8d8d8",
  bg_statusline = "#f1f1f1",
  bg_visual = "#bfbfbf",
  black = "#000001",
  blue = "#00b3e3",
  blue_alt = "#0087ff",
  border = "#00b3e3",
  border_highlight = "#333333",
  charcoal = "#e3e3e3",
  charcoal_light = "#d8d8d8",
  charcoal_medium = "#dedede",
  comment = "#7f7f7f",
  diff = {
    add = "#e5f3d9",
    change = "#d9edff",
    delete = "#ffd9e7",
    text = "#80c3ff"
  },
  error = "#ff005f",
  fg = "#333333",
  fg_dark = "#171717",
  fg_float = "#333333",
  fg_gutter = "#c9c9c9",
  fg_search = "#000001",
  fg_sidebar = "#171717",
  fg_statusline = "#171717",
  git = {
    add = "#4fb000",
    change = "#ff4d00",
    delete = "#ff004b"
  },
  green = "#4fb000",
  green_alt = "#4fb000",
  green_unchanged = "#a4e400",
  grey = "#7f7f7f",
  grey_dark = "#b2b2b2",
  grey_darker = "#bfbfbf",
  grey_darker_alt = "#c9c9c9",
  grey_light = "#4c4c4c",
  grey_lighter = "#171717",
  grey_medium = "#a5a5a5",
  hint = "#4fb000",
  info = "#0087ff",
  magenta = "#ff004b",
  none = "NONE",
  orange = "#ff4d00",
  purple = "#6054d0",
  red = "#ff005f",
  terminal_black = "#bfbfbf",
  warning = "#ff4d00",
  white = "#ffffff",
  yellow = "#ff8f00",
  yellow_alt = "#f6f557"
}

local highlights = {
  ["@attribute.builtin"] = {
    fg = "#ff004b",
    italic = true
  },
  ["@constructor"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#ff004b"
  },
  ["@field"] = {
    fg = "#333333"
  },
  ["@function.builtin"] = {
    fg = "#4fb000"
  },
  ["@function.builtin.bash"] = {
    fg = "#00b3e3"
  },
  ["@keyword"] = {
    fg = "#ff004b",
    style = {
      italic = false
    }
  },
  ["@keyword.function"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@lsp.type.boolean"] = {
    link = "@boolean"
  },
  ["@lsp.type.builtinType"] = {
    link = "@type.builtin"
  },
  ["@lsp.type.class.markdown"] = {
    fg = "#ff8f00"
  },
  ["@lsp.type.comment"] = {
    link = "@comment"
  },
  ["@lsp.type.decorator"] = {
    link = "@attribute"
  },
  ["@lsp.type.deriveHelper"] = {
    link = "@attribute"
  },
  ["@lsp.type.enum"] = {
    link = "@type"
  },
  ["@lsp.type.enumMember"] = {
    link = "@constant"
  },
  ["@lsp.type.escapeSequence"] = {
    link = "@string.escape"
  },
  ["@lsp.type.formatSpecifier"] = {
    link = "@punctuation.special"
  },
  ["@lsp.type.generic"] = {
    link = "@variable"
  },
  ["@lsp.type.keyword"] = {
    link = "@keyword"
  },
  ["@lsp.type.lifetime"] = {
    link = "@storageclass"
  },
  ["@lsp.type.namespace"] = {
    link = "@namespace"
  },
  ["@lsp.type.number"] = {
    link = "@number"
  },
  ["@lsp.type.operator"] = {
    link = "@operator"
  },
  ["@lsp.type.parameter"] = {
    link = "@parameter"
  },
  ["@lsp.type.property"] = {
    link = "@property"
  },
  ["@lsp.type.selfKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.selfTypeKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.string"] = {
    link = "@string"
  },
  ["@lsp.type.typeAlias"] = {
    link = "@type.definition"
  },
  ["@lsp.type.unresolvedReference"] = {
    sp = "#ff005f",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enum.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enumMember.defaultLibrary"] = {
    link = "@constant.builtin"
  },
  ["@lsp.typemod.function.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.keyword.async"] = {
    link = "@keyword.coroutine"
  },
  ["@lsp.typemod.keyword.injected"] = {
    link = "@keyword"
  },
  ["@lsp.typemod.macro.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.method.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.operator.injected"] = {
    link = "@operator"
  },
  ["@lsp.typemod.string.injected"] = {
    link = "@string"
  },
  ["@lsp.typemod.struct.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.variable.callable"] = {
    link = "@function"
  },
  ["@lsp.typemod.variable.defaultLibrary"] = {
    link = "@variable.builtin"
  },
  ["@lsp.typemod.variable.injected"] = {
    link = "@variable"
  },
  ["@lsp.typemod.variable.static"] = {
    link = "@constant"
  },
  ["@namespace"] = {
    link = "Include"
  },
  ["@parameter"] = {
    fg = "#ff4d00",
    italic = true
  },
  ["@preproc"] = {
    fg = "#7f7f7f",
    italic = true
  },
  ["@property"] = {
    fg = "#171717"
  },
  ["@property.ini"] = {
    fg = "#ff4d00"
  },
  ["@punctuation.bracket"] = {
    fg = "#ff004b"
  },
  ["@punctuation.bracket.markdown_inline"] = {
    fg = "#00b3e3"
  },
  ["@punctuation.delimiter"] = {
    fg = "#7f7f7f"
  },
  ["@string.documentation"] = {
    link = "Comment"
  },
  ["@string.escape"] = {
    fg = "#6054d0"
  },
  ["@string.regex"] = {
    fg = "#ff4d00"
  },
  ["@tag"] = {
    fg = "#ff004b"
  },
  ["@tag.attribute"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@tag.delimiter"] = {
    fg = "#4c4c4c"
  },
  ["@text.danger"] = {
    bg = "#ff005f",
    fg = "#ffffff"
  },
  ["@text.diff.add"] = {
    link = "DiffAdd"
  },
  ["@text.diff.delete"] = {
    link = "DiffDelete"
  },
  ["@text.literal.markdown_inline"] = {
    fg = "#6054d0"
  },
  ["@text.quote"] = {
    bg = "#c9c9c9",
    fg = "#333333",
    italic = true
  },
  ["@text.reference"] = {
    fg = "#00b3e3",
    underline = true
  },
  ["@text.title.1"] = {
    link = "Title"
  },
  ["@text.title.1.marker"] = {
    link = "@tag"
  },
  ["@text.title.2"] = {
    link = "Title"
  },
  ["@text.title.2.marker"] = {
    link = "@tag"
  },
  ["@text.title.3"] = {
    link = "Title"
  },
  ["@text.title.3.marker"] = {
    link = "@tag"
  },
  ["@text.title.4"] = {
    link = "Title"
  },
  ["@text.title.4.marker"] = {
    link = "@tag"
  },
  ["@text.title.5"] = {
    link = "Title"
  },
  ["@text.title.5.marker"] = {
    link = "@tag"
  },
  ["@text.title.6"] = {
    link = "Title"
  },
  ["@text.title.6.marker"] = {
    link = "@tag"
  },
  ["@text.todo.checked"] = {
    fg = "#ff004b"
  },
  ["@text.todo.unchecked"] = {
    fg = "#ff004b"
  },
  ["@text.uri"] = {
    fg = "#ff4d00"
  },
  ["@text.warning"] = {
    bg = "#ff4d00",
    fg = "#ffffff"
  },
  ["@type"] = {
    fg = "#00b3e3"
  },
  ["@type.builtin"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@type.qualifier.c_sharp"] = {
    fg = "#ff4d00",
    italic = true
  },
  ["@variable"] = {
    fg = "#333333",
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#4c4c4c",
    italic = true
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#6054d0"
  },
  Character = {
    fg = "#6054d0"
  },
  CmpDocumentation = {
    bg = "#dedede",
    fg = "#333333"
  },
  CmpDocumentationBorder = {
    bg = "#dedede",
    fg = "#333333"
  },
  CmpGhostText = {
    fg = "#bfbfbf"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#333333"
  },
  CmpItemAbbrDeprecated = {
    fg = "#c9c9c9",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#ff004b"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#ff004b"
  },
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#00b3e3",
    italic = true
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#6054d0"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#00b3e3",
    italic = true
  },
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#0087ff"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#171717"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#00b3e3"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#00b3e3"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#6054d0"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#333333"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#4fb000"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#ff004b"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#4fb000"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#6054d0"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#ff004b"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#333333"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#0087ff"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#00b3e3"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#333333"
  },
  CmpItemMenu = {
    fg = "#7f7f7f"
  },
  ColorColumn = {
    bg = "#ffffff"
  },
  Comment = {
    fg = "#7f7f7f",
    style = {
      italic = true
    }
  },
  Conceal = {},
  Conditional = {
    fg = "#ff004b"
  },
  Constant = {
    fg = "#6054d0"
  },
  CurSearch = {
    link = "IncSearch"
  },
  Cursor = {
    bg = "#00b3e3",
    fg = "#ffffff"
  },
  CursorColumn = {
    bg = "#ebebeb"
  },
  CursorIM = {
    bg = "#00b3e3",
    fg = "#ffffff"
  },
  CursorLine = {
    bg = "#ebebeb"
  },
  CursorLineNr = {
    fg = "#ff8f00"
  },
  Debug = {
    fg = "#ff4d00"
  },
  Define = {
    fg = "#ff004b"
  },
  Delimiter = {
    fg = "#ff004b"
  },
  DiagnosticError = {
    fg = "#ff005f"
  },
  DiagnosticHint = {
    fg = "#4fb000"
  },
  DiagnosticInfo = {
    fg = "#0087ff"
  },
  DiagnosticUnderlineError = {
    sp = "#ff005f",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#4fb000",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#0087ff",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#ff4d00",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#4c4c4c",
    italic = true,
    undercurl = true
  },
  DiagnosticVirtualTextError = {
    bg = "#ffebf2",
    fg = "#ff005f"
  },
  DiagnosticVirtualTextHint = {
    bg = "#f1f9eb",
    fg = "#4fb000"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#ebf5ff",
    fg = "#0087ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#fff1eb",
    fg = "#ff4d00"
  },
  DiagnosticWarn = {
    fg = "#ff4d00"
  },
  DiffAdd = {
    bg = "#e5f3d9",
    fg = "#4fb000"
  },
  DiffChange = {
    bg = "#d9edff"
  },
  DiffDelete = {
    bg = "#ffd9e7",
    fg = "#ff004b"
  },
  DiffText = {
    bg = "#80c3ff"
  },
  Directory = {
    fg = "#6054d0"
  },
  DirvishArg = {
    bg = "#a5a5a5",
    fg = "#ff8f00"
  },
  DirvishPathTail = {
    fg = "#00b3e3"
  },
  DirvishSuffix = {
    fg = "#a5a5a5"
  },
  EndOfBuffer = {
    fg = "#bfbfbf"
  },
  Error = {
    bg = "#ff005f",
    fg = "#ffffff"
  },
  ErrorMsg = {
    bg = "#ff005f",
    fg = "#ffffff"
  },
  Exception = {
    fg = "#ff004b"
  },
  Float = {
    fg = "#6054d0"
  },
  FloatBorder = {
    bg = "#dedede",
    fg = "#333333"
  },
  FoldColumn = {
    bg = "#dedede",
    fg = "#ff4d00"
  },
  Folded = {
    fg = "#00b3e3",
    italic = true
  },
  Function = {
    fg = "#4fb000",
    style = {}
  },
  GitSignsAdd = {
    link = "diffAdded"
  },
  GitSignsAddInline = {
    bg = "#4fb000",
    fg = "#e5f3d9"
  },
  GitSignsChange = {
    link = "diffChanged"
  },
  GitSignsChangeInline = {
    bg = "#0087ff",
    fg = "#d9edff"
  },
  GitSignsCurrentLineBlame = {
    bg = "#dedede",
    fg = "#0087ff",
    italic = true
  },
  GitSignsDelete = {
    link = "diffRemoved"
  },
  GitSignsDeleteInline = {
    bg = "#ff004b",
    fg = "#ffd9e7"
  },
  Hlargs = {
    fg = "#ff8f00"
  },
  IblIndent = {
    fg = "#c9c9c9",
    nocombine = true
  },
  IblScope = {
    fg = "#00b3e3",
    nocombine = true
  },
  IblWhitespace = {
    fg = "#171717",
    nocombine = true
  },
  Identifier = {
    fg = "#333333",
    style = {}
  },
  IncSearch = {
    bg = "#6054d0",
    fg = "#000001"
  },
  Include = {
    fg = "#ff004b"
  },
  IndentBlanklineChar = {
    fg = "#c9c9c9",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#00b3e3",
    nocombine = true
  },
  IndentBlanklineSpaceChar = {
    fg = "#171717",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#ff004b",
    style = {
      italic = false
    }
  },
  Label = {
    fg = "#ff8f00"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ff004b"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#c9c9c9"
  },
  LineNr = {
    fg = "#c9c9c9"
  },
  LineNrBe = {
    fg = "#4fb000"
  },
  LspInfoBorder = {
    bg = "#dedede",
    fg = "#333333"
  },
  LspReferenceRead = {
    bg = "#c9c9c9"
  },
  LspReferenceText = {
    bg = "#c9c9c9"
  },
  LspReferenceWrite = {
    bg = "#c9c9c9"
  },
  Macro = {
    fg = "#ff004b"
  },
  MatchParen = {
    bold = true,
    fg = "#ff004b",
    underline = true
  },
  ModeMsg = {
    bold = true,
    fg = "#171717"
  },
  MoreMsg = {
    fg = "#4fb000"
  },
  MsgArea = {
    fg = "#171717"
  },
  MsgSeparator = {
    sp = "#00b3e3",
    underline = true
  },
  NeoTreeDimText = {
    fg = "#c9c9c9"
  },
  NeoTreeNormal = {
    bg = "#dedede",
    fg = "#171717"
  },
  NeoTreeNormalNC = {
    bg = "#dedede",
    fg = "#171717"
  },
  NonText = {
    fg = "#bfbfbf"
  },
  Normal = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NormalFloat = {
    bg = "#dedede",
    fg = "#333333"
  },
  NormalNC = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NormalSB = {
    bg = "#dedede",
    fg = "#171717"
  },
  NotifyBackground = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NotifyDEBUGBody = {
    link = "Normal"
  },
  NotifyDEBUGBorder = {
    bg = "#ffffff",
    fg = "#d9d9d9"
  },
  NotifyDEBUGIcon = {
    fg = "#7f7f7f"
  },
  NotifyDEBUGTitle = {
    fg = "#7f7f7f"
  },
  NotifyERRORBody = {
    link = "Normal"
  },
  NotifyERRORBorder = {
    bg = "#ffffff",
    fg = "#ffb3cf"
  },
  NotifyERRORIcon = {
    fg = "#ff005f"
  },
  NotifyERRORTitle = {
    fg = "#ff005f"
  },
  NotifyINFOBody = {
    link = "Normal"
  },
  NotifyINFOBorder = {
    bg = "#ffffff",
    fg = "#b3dbff"
  },
  NotifyINFOIcon = {
    fg = "#0087ff"
  },
  NotifyINFOTitle = {
    fg = "#0087ff"
  },
  NotifyTRACEBody = {
    link = "Normal"
  },
  NotifyTRACEBorder = {
    bg = "#ffffff",
    fg = "#cfccf1"
  },
  NotifyTRACEIcon = {
    fg = "#6054d0"
  },
  NotifyTRACETitle = {
    fg = "#6054d0"
  },
  NotifyWARNBody = {
    link = "Normal"
  },
  NotifyWARNBorder = {
    bg = "#ffffff",
    fg = "#ffcab3"
  },
  NotifyWARNIcon = {
    fg = "#ff4d00"
  },
  NotifyWARNTitle = {
    fg = "#ff4d00"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#00b3e3"
  },
  NvimTreeFolderName = {
    fg = "#333333"
  },
  NvimTreeGitDeleted = {
    fg = "#ff004b"
  },
  NvimTreeGitDirty = {
    fg = "#ff4d00"
  },
  NvimTreeGitNew = {
    fg = "#4fb000"
  },
  NvimTreeImageFile = {
    fg = "#171717"
  },
  NvimTreeIndentMarker = {
    fg = "#c9c9c9"
  },
  NvimTreeNormal = {
    bg = "#dedede",
    fg = "#171717"
  },
  NvimTreeNormalNC = {
    bg = "#dedede",
    fg = "#171717"
  },
  NvimTreeOpenedFile = {
    bg = "#ebebeb"
  },
  NvimTreeOpenedFolderName = {
    bold = true,
    fg = "#333333"
  },
  NvimTreeRootFolder = {
    fg = "#ff004b",
    italic = true
  },
  NvimTreeSpecialFile = {
    fg = "#4fb000",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#00b3e3"
  },
  NvimTreeWinSeparator = {
    bg = "#dedede",
    fg = "#dedede"
  },
  Operator = {
    fg = "#ff004b"
  },
  Pmenu = {
    bg = "#dedede",
    fg = "#333333"
  },
  PmenuSbar = {
    bg = "#d5d5d5"
  },
  PmenuSel = {
    bg = "#ababab",
    fg = "#ff004b"
  },
  PmenuThumb = {
    bg = "#7f7f7f",
    fg = "#b2b2b2"
  },
  PreCondit = {
    fg = "#6054d0"
  },
  PreProc = {
    fg = "#ff004b"
  },
  Question = {
    fg = "#00b3e3"
  },
  RainbowDelimiterBlue = {
    fg = "#0087ff"
  },
  RainbowDelimiterCyan = {
    fg = "#00b3e3"
  },
  RainbowDelimiterGreen = {
    fg = "#4fb000"
  },
  RainbowDelimiterOrange = {
    fg = "#ff4d00"
  },
  RainbowDelimiterRed = {
    fg = "#ff004b"
  },
  RainbowDelimiterViolet = {
    fg = "#6054d0"
  },
  RainbowDelimiterYellow = {
    fg = "#ff8f00"
  },
  Repeat = {
    fg = "#ff004b"
  },
  Search = {
    bg = "#ff8f00",
    bold = true,
    fg = "#000001"
  },
  SignColumn = {
    bg = "#ffffff",
    fg = "#c9c9c9"
  },
  SignColumnSB = {
    bg = "#dedede",
    fg = "#c9c9c9"
  },
  Special = {
    fg = "#6054d0"
  },
  SpecialKey = {
    fg = "#a5a5a5"
  },
  SpellBad = {
    sp = "#ff005f",
    undercurl = true
  },
  SpellCap = {
    sp = "#ff4d00",
    undercurl = true
  },
  SpellLocal = {
    sp = "#0087ff",
    undercurl = true
  },
  SpellRare = {
    sp = "#4fb000",
    undercurl = true
  },
  Statement = {
    fg = "#ff004b"
  },
  StatusLine = {
    bg = "#f1f1f1",
    fg = "#171717"
  },
  StatusLineNC = {
    bg = "#f1f1f1",
    fg = "#c9c9c9"
  },
  StorageClass = {
    fg = "#00b3e3",
    italic = true
  },
  String = {
    fg = "#ff8f00"
  },
  Structure = {
    fg = "#00b3e3"
  },
  Substitute = {
    bg = "#4fb000",
    fg = "#000001"
  },
  TabLine = {
    bg = "#f1f1f1",
    fg = "#171717",
    underline = true
  },
  TabLineFill = {
    bg = "#bfbfbf"
  },
  TabLineSel = {
    bg = "#ffffff"
  },
  Tag = {
    fg = "#6054d0"
  },
  TelescopeBorder = {
    bg = "#dedede",
    fg = "#333333"
  },
  TelescopeNormal = {
    bg = "#dedede",
    fg = "#4c4c4c"
  },
  TelescopePromptPrefix = {
    fg = "#0087ff"
  },
  TelescopeSelection = {
    bg = "#f1f1f1",
    fg = "#333333"
  },
  TelescopeSelectionCaret = {
    bg = "#f1f1f1",
    fg = "#ff004b"
  },
  TermCursor = {
    bg = "#333333",
    fg = "#ffffff"
  },
  TermCursorNC = {
    bg = "#171717",
    fg = "#ffffff"
  },
  Title = {
    bold = true,
    fg = "#333333"
  },
  Todo = {
    bg = "#a5a5a5",
    fg = "#ff8f00"
  },
  TodoBgFIX = {
    bg = "#ff004b",
    bold = true,
    fg = "#ffffff"
  },
  TodoBgHACK = {
    bg = "#ff4d00",
    bold = true,
    fg = "#000001"
  },
  TodoBgNOTE = {
    bg = "#ff8f00",
    bold = true,
    fg = "#000001"
  },
  TodoBgPERF = {
    bg = "#00b3e3",
    bold = true,
    fg = "#000001"
  },
  TodoBgTEST = {
    bg = "#4fb000",
    bold = true,
    fg = "#000001"
  },
  TodoBgTODO = {
    bg = "#6054d0",
    bold = true,
    fg = "#e1e1e1"
  },
  TodoBgWARN = {
    bg = "#ff4d00",
    bold = true,
    fg = "#000001"
  },
  TodoFgFIX = {
    fg = "#ff004b"
  },
  TodoFgHACK = {
    fg = "#ff4d00"
  },
  TodoFgNOTE = {
    fg = "#ff8f00"
  },
  TodoFgPERF = {
    fg = "#00b3e3"
  },
  TodoFgTEST = {
    fg = "#4fb000"
  },
  TodoFgTODO = {
    fg = "#6054d0"
  },
  TodoFgWARN = {
    fg = "#ff4d00"
  },
  TodoSignHACK = {
    link = "TodoFgHACK"
  },
  TodoSignNOTE = {
    link = "TodoFgNOTE"
  },
  TodoSignPERF = {
    link = "TodoFgPERF"
  },
  TodoSignTEST = {
    link = "TodoFgTEST"
  },
  TodoSignTODO = {
    link = "TodoFgTODO"
  },
  TodoSignWARN = {
    link = "TodoFgWARN"
  },
  TreesitterContext = {
    bg = "#d4d4d4"
  },
  TreesitterContextBottom = {
    sp = "#00b3e3",
    underline = true
  },
  Type = {},
  Typedef = {
    fg = "#00b3e3"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#00b3e3"
  },
  Visual = {
    bg = "#bfbfbf"
  },
  WarningMsg = {
    bg = "#ff005f",
    fg = "#ffffff"
  },
  WhichKey = {
    fg = "#ff8f00"
  },
  WhichKeyBorder = {
    bg = "#dedede"
  },
  WhichKeyDesc = {
    fg = "#333333"
  },
  WhichKeyFloat = {
    bg = "#dedede"
  },
  WhichKeyGroup = {
    fg = "#ff004b"
  },
  WhichKeySeparator = {
    fg = "#4c4c4c",
    italic = false
  },
  WhichKeyValue = {
    fg = "#4c4c4c"
  },
  Whitespace = {
    fg = "#bfbfbf"
  },
  WinSeparator = {
    fg = "#00b3e3"
  },
  debugBreakpoint = {
    bg = "#e6f3ff",
    fg = "#0087ff"
  },
  debugPC = {
    bg = "#dedede"
  },
  diffAdded = {
    fg = "#4fb000"
  },
  diffChanged = {
    fg = "#ff4d00"
  },
  diffFile = {
    fg = "#333333"
  },
  diffIndexLine = {
    fg = "#6054d0"
  },
  diffLine = {
    fg = "#6054d0"
  },
  diffNewFile = {
    fg = "#ff4d00"
  },
  diffOldFile = {
    fg = "#ff8f00"
  },
  diffRemoved = {
    fg = "#ff004b"
  },
  diffSubname = {
    fg = "#ff8f00"
  },
  dosbatchError = {
    fg = "#ff005f"
  },
  gitcommitHeader = {
    fg = "#00b3e3"
  },
  gitcommitOverflow = {
    fg = "#ff004b"
  },
  gitcommitSelectedFile = {
    fg = "#ff8f00"
  },
  gitcommitSummary = {
    fg = "#333333"
  },
  healthError = {
    fg = "#ff005f"
  },
  healthSuccess = {
    fg = "#4fb000"
  },
  healthWarning = {
    fg = "#ff4d00"
  },
  helpCommand = {
    bg = "#dedede",
    fg = "#00b3e3"
  },
  htmlH1 = {
    link = "Title"
  },
  htmlH2 = {
    link = "Title"
  },
  htmlH3 = {
    link = "Title"
  },
  htmlH4 = {
    link = "Title"
  },
  htmlH5 = {
    link = "Title"
  },
  htmlH6 = {
    link = "Title"
  },
  lCursor = {
    bg = "#00b3e3",
    fg = "#ffffff"
  },
  qfFileName = {
    fg = "#6054d0"
  },
  qfLineNr = {
    fg = "#7f7f7f"
  }
}