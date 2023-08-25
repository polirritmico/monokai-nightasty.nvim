local colors = {
  bg = "#ffffff",
  bg_dark = "#d9d9d9",
  bg_darker = "#d3d3d3",
  bg_float = "#ffffff",
  bg_highlight = "#ebebeb",
  bg_popup = "#bfbfbf",
  bg_search = "#ff8f00",
  bg_sidebar = "#d9d9d9",
  bg_statusline = "#bfbfbf",
  bg_visual = "#bfbfbf",
  black = "#000000",
  blue_light = "#00b3e3",
  blue_medium = "#0087ff",
  border = "#7f7f7f",
  border_highlight = "#333333",
  charcoal = "#e3e3e3",
  charcoal_light = "#d8d8d8",
  charcoal_medium = "#dedede",
  comment = "#7f7f7f",
  diff = {
    add = "#e5f3d9",
    change = "#d9edff",
    delete = "#ffd9e4",
    text = "#0087ff"
  },
  error = "#ff005f",
  fg = "#333333",
  fg_dark = "#171717",
  fg_float = "#333333",
  fg_gutter = "#c9c9c9",
  fg_search = "#000000",
  fg_sidebar = "#171717",
  fg_statusline = "#4c4c4c",
  git = {
    add = "#a4e400",
    change = "#ff9700",
    delete = "#fc1a70"
  },
  green_alt = "#83dc78",
  green_light = "#4fb000",
  grey = "#7f7f7f",
  grey_dark = "#b2b2b2",
  grey_darker = "#bfbfbf",
  grey_darker_alt = "#c9c9c9",
  grey_light = "#4c4c4c",
  grey_lighter = "#171717",
  grey_medium = "#a5a5a5",
  hint = "#83dc78",
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
  yellow_light = "#f6f557"
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
  ["@lsp.type.keyword"] = {
    link = "@keyword"
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
  ["@lsp.type.string.rust"] = {
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
  ["@lsp.typemod.variable.defaultLibrary"] = {
    link = "@variable.builtin"
  },
  ["@lsp.typemod.variable.injected"] = {
    link = "@variable"
  },
  ["@parameter"] = {
    fg = "#ff4d00",
    italic = true
  },
  ["@preproc"] = {
    fg = "#7f7f7f",
    italic = true
  },
  ["@punctuation.bracket"] = {
    fg = "#ff004b"
  },
  ["@punctuation.delimiter"] = {
    fg = "#7f7f7f"
  },
  ["@string.documentation"] = {
    fg = "#7f7f7f",
    italic = true
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
  ["@variable"] = {
    fg = "#333333",
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#4c4c4c",
    italic = true
  },
  AlphaHeader = {
    fg = "#ff4d00"
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
  CursorLineNR = {
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
    fg = "#83dc78"
  },
  DiagnosticInfo = {
    fg = "#0087ff"
  },
  DiagnosticUnderlineError = {
    sp = "#ff005f",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#83dc78",
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
    bg = "#f5fcf4",
    fg = "#83dc78"
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
    bg = "#e5f3d9"
  },
  DiffChange = {
    bg = "#d9edff"
  },
  DiffDelete = {
    bg = "#ffd9e4"
  },
  DiffText = {
    bg = "#0087ff"
  },
  Directory = {
    fg = "#6054d0"
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
    bg = "#ffffff",
    fg = "#333333"
  },
  FoldColumn = {
    bg = "#ffffff",
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
  Hlargs = {
    fg = "#ff8f00"
  },
  Identifier = {
    fg = "#333333",
    style = {}
  },
  IncSearch = {
    bg = "#6054d0",
    fg = "#000000"
  },
  Include = {
    fg = "#ff004b"
  },
  IndentBlanklineChar = {
    fg = "#c9c9c9",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#6054d0",
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
    sp = "#7f7f7f",
    underline = true
  },
  NonText = {
    fg = "#bfbfbf"
  },
  Normal = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NormalFloat = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NormalNC = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NormalSB = {
    bg = "#d9d9d9",
    fg = "#171717"
  },
  Operator = {
    fg = "#ff004b"
  },
  Pmenu = {
    bg = "#bfbfbf",
    fg = "#00b3e3"
  },
  PmenuSbar = {
    bg = "#b8b8b8"
  },
  PmenuSel = {
    bg = "#d4d4d4",
    fg = "#ff8f00"
  },
  PmenuThumb = {
    bg = "#c9c9c9"
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
  Repeat = {
    fg = "#ff004b"
  },
  Search = {
    bg = "#ff8f00",
    bold = true,
    fg = "#000000"
  },
  SignColumn = {
    bg = "#ffffff",
    fg = "#c9c9c9"
  },
  SignColumnSB = {
    bg = "#d9d9d9",
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
    sp = "#83dc78",
    undercurl = true
  },
  Statement = {
    fg = "#ff004b"
  },
  StatusLine = {
    bg = "#bfbfbf",
    fg = "#171717"
  },
  StatusLineNC = {
    bg = "#bfbfbf",
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
    fg = "#000000"
  },
  TabLine = {
    bg = "#bfbfbf",
    fg = "#4c4c4c",
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
    bg = "#ffffff",
    fg = "#333333"
  },
  TelescopeNormal = {
    bg = "#ffffff",
    fg = "#4c4c4c"
  },
  TelescopePromptPrefix = {
    fg = "#0087ff"
  },
  TelescopeSelection = {
    bg = "#bfbfbf",
    fg = "#333333"
  },
  TelescopeSelectionCaret = {
    bg = "#bfbfbf",
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
    fg = "#000000"
  },
  TodoBgNOTE = {
    bg = "#ff8f00",
    bold = true,
    fg = "#000000"
  },
  TodoBgPERF = {
    bg = "#00b3e3",
    bold = true,
    fg = "#000000"
  },
  TodoBgTEST = {
    bg = "#4fb000",
    bold = true,
    fg = "#000000"
  },
  TodoBgTODO = {
    bg = "#6054d0",
    bold = true,
    fg = "#d9d9d9"
  },
  TodoBgWARN = {
    bg = "#ff4d00",
    bold = true,
    fg = "#000000"
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
    sp = "#7f7f7f",
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
    fg = "#7f7f7f"
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
    bg = "#d9d9d9"
  },
  WhichKeyDesc = {
    fg = "#333333"
  },
  WhichKeyFloat = {
    bg = "#d9d9d9"
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
    fg = "#7f7f7f"
  },
  debugBreakpoint = {
    bg = "#e6f3ff",
    fg = "#0087ff"
  },
  debugPC = {
    bg = "#d9d9d9"
  },
  diffAdded = {
    fg = "#a4e400"
  },
  diffChanged = {
    fg = "#ff9700"
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
    fg = "#fc1a70"
  },
  diffSubname = {
    fg = "#ff8f00"
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
    fg = "#83dc78"
  },
  healthWarning = {
    fg = "#ff4d00"
  },
  helpCommand = {
    bg = "#ffffff",
    fg = "#00b3e3"
  },
  lCursor = {
    bg = "#00b3e3",
    fg = "#ffffff"
  },
  markdownCode = {
    fg = "#6054d0"
  },
  markdownCodeBlock = {
    fg = "#ff8f00"
  },
  markdownCodeDelimiter = {
    fg = "#4fb000"
  },
  markdownH1 = {
    bold = true,
    fg = "#333333"
  },
  markdownHeadingDelimiter = {
    fg = "#ff004b"
  },
  markdownHeadingRule = {
    bold = true,
    fg = "#ff004b"
  },
  markdownLinkDelimiter = {
    fg = "#00b3e3"
  },
  markdownLinkText = {
    fg = "#00b3e3",
    underline = true
  },
  markdownLinkTextDelimiter = {
    fg = "#00b3e3"
  },
  markdownListMarker = {
    fg = "#ff004b"
  },
  markdownRule = {
    fg = "#00b3e3"
  },
  markdownUrl = {
    fg = "#ff4d00"
  },
  mkdCode = {
    fg = "#6054d0"
  },
  mkdCodeDelimiter = {
    fg = "#6054d0"
  },
  mkdCodeEnd = {
    fg = "#4fb000"
  },
  mkdCodeStart = {
    fg = "#4fb000"
  },
  mkdDelimiter = {
    fg = "#00b3e3"
  },
  mkdHeading = {
    fg = "#ff004b"
  },
  mkdLink = {
    fg = "#00b3e3",
    underline = true
  },
  mkdListItem = {
    fg = "#ff004b"
  },
  mkdListItemCheckbox = {
    fg = "#ff004b"
  },
  mkdURL = {
    fg = "#ff4d00"
  },
  qfFileName = {
    fg = "#6054d0"
  },
  qfLineNr = {
    fg = "#7f7f7f"
  }
}