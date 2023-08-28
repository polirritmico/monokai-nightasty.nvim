local colors = {
  bg = "#121212",
  bg_dark = "#121212",
  bg_darker = "#262626",
  bg_float = "#2b2b2b",
  bg_highlight = "#2a2a2a",
  bg_popup = "#444444",
  bg_search = "#ffff87",
  bg_sidebar = "#2b2b2b",
  bg_status_alt = "#313131",
  bg_statusline = "#444444",
  bg_visual = "#444444",
  black = "#000000",
  blue = "#62d8f1",
  blue_alt = "#0087ff",
  border = "#62d8f1",
  border_highlight = "#ffffff",
  charcoal = "#262626",
  charcoal_light = "#313131",
  charcoal_medium = "#2b2b2b",
  comment = "#8a8a8a",
  diff = {
    add = "#28310f",
    change = "#0f2436",
    delete = "#360f1e",
    text = "#0087ff"
  },
  error = "#ff005f",
  fg = "#ffffff",
  fg_dark = "#e8e8e8",
  fg_float = "#ffffff",
  fg_gutter = "#3e3e3e",
  fg_search = "#000000",
  fg_sidebar = "#e8e8e8",
  fg_statusline = "#e8e8e8",
  git = {
    add = "#a4e400",
    change = "#ff9700",
    delete = "#fc1a70"
  },
  green = "#a4e400",
  green_alt = "#83dc78",
  green_unchanged = "#a4e400",
  grey = "#8a8a8a",
  grey_dark = "#4b4b4b",
  grey_darker = "#444444",
  grey_darker_alt = "#3e3e3e",
  grey_light = "#bcbcbc",
  grey_lighter = "#e8e8e8",
  grey_medium = "#585858",
  hint = "#83dc78",
  info = "#0087ff",
  magenta = "#fc1a70",
  none = "NONE",
  orange = "#ff9700",
  purple = "#af87ff",
  red = "#ff005f",
  terminal_black = "#444444",
  warning = "#ff9700",
  white = "#ffffff",
  yellow = "#ffff87",
  yellow_alt = "#f6f557"
}

local highlights = {
  ["@attribute.builtin"] = {
    fg = "#fc1a70",
    italic = true
  },
  ["@constructor"] = {
    fg = "#62d8f1",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#fc1a70"
  },
  ["@field"] = {
    fg = "#ffffff"
  },
  ["@function.builtin"] = {
    fg = "#a4e400"
  },
  ["@function.builtin.bash"] = {
    fg = "#62d8f1"
  },
  ["@keyword"] = {
    fg = "#fc1a70",
    style = {
      italic = true
    }
  },
  ["@keyword.function"] = {
    fg = "#62d8f1",
    italic = true
  },
  ["@lsp.type.boolean"] = {
    link = "@boolean"
  },
  ["@lsp.type.builtinType"] = {
    link = "@type.builtin"
  },
  ["@lsp.type.class.markdown"] = {
    fg = "#ffff87"
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
    fg = "#ff9700",
    italic = true
  },
  ["@preproc"] = {
    fg = "#8a8a8a",
    italic = true
  },
  ["@punctuation.bracket"] = {
    fg = "#fc1a70"
  },
  ["@punctuation.delimiter"] = {
    fg = "#8a8a8a"
  },
  ["@string.documentation"] = {
    fg = "#8a8a8a",
    italic = true
  },
  ["@tag"] = {
    fg = "#fc1a70"
  },
  ["@tag.attribute"] = {
    fg = "#62d8f1",
    italic = true
  },
  ["@tag.delimiter"] = {
    fg = "#bcbcbc"
  },
  ["@text.danger"] = {
    bg = "#ff005f",
    fg = "#121212"
  },
  ["@text.diff.add"] = {
    link = "DiffAdd"
  },
  ["@text.diff.delete"] = {
    link = "DiffDelete"
  },
  ["@text.warning"] = {
    bg = "#ff9700",
    fg = "#121212"
  },
  ["@type"] = {
    fg = "#62d8f1"
  },
  ["@type.builtin"] = {
    fg = "#62d8f1",
    italic = true
  },
  ["@variable"] = {
    fg = "#ffffff",
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#bcbcbc",
    italic = true
  },
  AlphaHeader = {
    fg = "#ff9700"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#af87ff"
  },
  Character = {
    fg = "#af87ff"
  },
  ColorColumn = {
    bg = "#121212"
  },
  Comment = {
    fg = "#8a8a8a",
    style = {
      italic = true
    }
  },
  Conceal = {},
  Conditional = {
    fg = "#fc1a70"
  },
  Constant = {
    fg = "#af87ff"
  },
  CurSearch = {
    link = "IncSearch"
  },
  Cursor = {
    bg = "#62d8f1",
    fg = "#121212"
  },
  CursorColumn = {
    bg = "#2a2a2a"
  },
  CursorIM = {
    bg = "#62d8f1",
    fg = "#121212"
  },
  CursorLine = {
    bg = "#2a2a2a"
  },
  CursorLineNR = {
    fg = "#ffff87"
  },
  Debug = {
    fg = "#ff9700"
  },
  Define = {
    fg = "#fc1a70"
  },
  Delimiter = {
    fg = "#fc1a70"
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
    sp = "#ff9700",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#bcbcbc",
    italic = true,
    undercurl = true
  },
  DiagnosticVirtualTextError = {
    bg = "#251118",
    fg = "#ff005f"
  },
  DiagnosticVirtualTextHint = {
    bg = "#1b221a",
    fg = "#83dc78"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#111b25",
    fg = "#0087ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#251d11",
    fg = "#ff9700"
  },
  DiagnosticWarn = {
    fg = "#ff9700"
  },
  DiffAdd = {
    bg = "#28310f"
  },
  DiffChange = {
    bg = "#0f2436"
  },
  DiffDelete = {
    bg = "#360f1e"
  },
  DiffText = {
    bg = "#0087ff"
  },
  Directory = {
    fg = "#af87ff"
  },
  EndOfBuffer = {
    fg = "#444444"
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
    fg = "#fc1a70"
  },
  Float = {
    fg = "#af87ff"
  },
  FloatBorder = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  FoldColumn = {
    bg = "NONE",
    fg = "#ff9700"
  },
  Folded = {
    fg = "#62d8f1",
    italic = true
  },
  Function = {
    fg = "#a4e400",
    style = {}
  },
  Hlargs = {
    fg = "#ffff87"
  },
  Identifier = {
    fg = "#ffffff",
    style = {}
  },
  IncSearch = {
    bg = "#af87ff",
    fg = "#000000"
  },
  Include = {
    fg = "#fc1a70"
  },
  IndentBlanklineChar = {
    fg = "#3e3e3e",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#af87ff",
    nocombine = true
  },
  IndentBlanklineSpaceChar = {
    fg = "#e8e8e8",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#fc1a70",
    style = {
      italic = true
    }
  },
  Label = {
    fg = "#ffff87"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#fc1a70"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#3e3e3e"
  },
  LineNr = {
    fg = "#3e3e3e"
  },
  LineNrBe = {
    fg = "#a4e400"
  },
  LspReferenceRead = {
    bg = "#3e3e3e"
  },
  LspReferenceText = {
    bg = "#3e3e3e"
  },
  LspReferenceWrite = {
    bg = "#3e3e3e"
  },
  Macro = {
    fg = "#fc1a70"
  },
  MatchParen = {
    bold = true,
    fg = "#fc1a70",
    underline = true
  },
  ModeMsg = {
    bold = true,
    fg = "#e8e8e8"
  },
  MoreMsg = {
    fg = "#a4e400"
  },
  MsgArea = {
    fg = "#e8e8e8"
  },
  MsgSeparator = {
    sp = "#62d8f1",
    underline = true
  },
  NeoTreeDimText = {
    fg = "#3e3e3e"
  },
  NeoTreeNormal = {
    bg = "#2b2b2b",
    fg = "#e8e8e8"
  },
  NeoTreeNormalNC = {
    bg = "#2b2b2b",
    fg = "#e8e8e8"
  },
  NonText = {
    fg = "#444444"
  },
  Normal = {
    bg = "NONE",
    fg = "#ffffff"
  },
  NormalFloat = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  NormalNC = {
    bg = "NONE",
    fg = "#ffffff"
  },
  NormalSB = {
    bg = "#2b2b2b",
    fg = "#e8e8e8"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#62d8f1"
  },
  NvimTreeFolderName = {
    fg = "#ffffff"
  },
  NvimTreeGitDeleted = {
    fg = "#fc1a70"
  },
  NvimTreeGitDirty = {
    fg = "#ff9700"
  },
  NvimTreeGitNew = {
    fg = "#a4e400"
  },
  NvimTreeImageFile = {
    fg = "#e8e8e8"
  },
  NvimTreeIndentMarker = {
    fg = "#3e3e3e"
  },
  NvimTreeNormal = {
    bg = "#2b2b2b",
    fg = "#e8e8e8"
  },
  NvimTreeNormalNC = {
    bg = "#2b2b2b",
    fg = "#e8e8e8"
  },
  NvimTreeOpenedFile = {
    bg = "#2a2a2a"
  },
  NvimTreeOpenedFolderName = {
    bold = true,
    fg = "#ffffff"
  },
  NvimTreeRootFolder = {
    fg = "#fc1a70",
    italic = true
  },
  NvimTreeSpecialFile = {
    fg = "#a4e400",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#62d8f1"
  },
  NvimTreeWinSeparator = {
    bg = "#2b2b2b",
    fg = "#2b2b2b"
  },
  Operator = {
    fg = "#fc1a70"
  },
  Pmenu = {
    bg = "#444444",
    fg = "#62d8f1"
  },
  PmenuSbar = {
    bg = "#4d4d4d"
  },
  PmenuSel = {
    bg = "#353535",
    fg = "#ffff87"
  },
  PmenuThumb = {
    bg = "#3e3e3e"
  },
  PreCondit = {
    fg = "#af87ff"
  },
  PreProc = {
    fg = "#fc1a70"
  },
  Question = {
    fg = "#62d8f1"
  },
  Repeat = {
    fg = "#fc1a70"
  },
  Search = {
    bg = "#ffff87",
    bold = true,
    fg = "#000000"
  },
  SignColumn = {
    bg = "NONE",
    fg = "#3e3e3e"
  },
  SignColumnSB = {
    bg = "#2b2b2b",
    fg = "#3e3e3e"
  },
  Special = {
    fg = "#af87ff"
  },
  SpecialKey = {
    fg = "#585858"
  },
  SpellBad = {
    sp = "#ff005f",
    undercurl = true
  },
  SpellCap = {
    sp = "#ff9700",
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
    fg = "#fc1a70"
  },
  StatusLine = {
    bg = "#444444",
    fg = "#e8e8e8"
  },
  StatusLineNC = {
    bg = "#444444",
    fg = "#3e3e3e"
  },
  StorageClass = {
    fg = "#62d8f1",
    italic = true
  },
  String = {
    fg = "#ffff87"
  },
  Structure = {
    fg = "#62d8f1"
  },
  Substitute = {
    bg = "#a4e400",
    fg = "#000000"
  },
  TabLine = {
    bg = "#444444",
    fg = "#e8e8e8",
    underline = true
  },
  TabLineFill = {
    bg = "#444444"
  },
  TabLineSel = {
    bg = "#121212"
  },
  Tag = {
    fg = "#af87ff"
  },
  TelescopeBorder = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  TelescopeNormal = {
    bg = "#2b2b2b",
    fg = "#bcbcbc"
  },
  TelescopePromptPrefix = {
    fg = "#0087ff"
  },
  TelescopeSelection = {
    bg = "#444444",
    fg = "#ffffff"
  },
  TelescopeSelectionCaret = {
    bg = "#444444",
    fg = "#fc1a70"
  },
  TermCursor = {
    bg = "#ffffff",
    fg = "#121212"
  },
  TermCursorNC = {
    bg = "#e8e8e8",
    fg = "#121212"
  },
  Title = {
    bold = true,
    fg = "#ffffff"
  },
  Todo = {
    bg = "#585858",
    fg = "#ffff87"
  },
  TodoBgFIX = {
    bg = "#fc1a70",
    bold = true,
    fg = "#ffffff"
  },
  TodoBgHACK = {
    bg = "#ff9700",
    bold = true,
    fg = "#000000"
  },
  TodoBgNOTE = {
    bg = "#ffff87",
    bold = true,
    fg = "#000000"
  },
  TodoBgPERF = {
    bg = "#62d8f1",
    bold = true,
    fg = "#000000"
  },
  TodoBgTEST = {
    bg = "#a4e400",
    bold = true,
    fg = "#000000"
  },
  TodoBgTODO = {
    bg = "#af87ff",
    bold = true,
    fg = "#121212"
  },
  TodoBgWARN = {
    bg = "#ff9700",
    bold = true,
    fg = "#000000"
  },
  TodoFgFIX = {
    fg = "#fc1a70"
  },
  TodoFgHACK = {
    fg = "#ff9700"
  },
  TodoFgNOTE = {
    fg = "#ffff87"
  },
  TodoFgPERF = {
    fg = "#62d8f1"
  },
  TodoFgTEST = {
    fg = "#a4e400"
  },
  TodoFgTODO = {
    fg = "#af87ff"
  },
  TodoFgWARN = {
    fg = "#ff9700"
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
    bg = "NONE"
  },
  TreesitterContextBottom = {
    sp = "#62d8f1",
    underline = true
  },
  Type = {},
  Typedef = {
    fg = "#62d8f1"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#62d8f1"
  },
  Visual = {
    bg = "#444444"
  },
  WarningMsg = {
    bg = "#ff005f",
    fg = "#ffffff"
  },
  WhichKey = {
    fg = "#ffff87"
  },
  WhichKeyBorder = {
    bg = "#2b2b2b"
  },
  WhichKeyDesc = {
    fg = "#ffffff"
  },
  WhichKeyFloat = {
    bg = "#2b2b2b"
  },
  WhichKeyGroup = {
    fg = "#fc1a70"
  },
  WhichKeySeparator = {
    fg = "#bcbcbc",
    italic = false
  },
  WhichKeyValue = {
    fg = "#bcbcbc"
  },
  Whitespace = {
    fg = "#444444"
  },
  WinSeparator = {
    fg = "#62d8f1"
  },
  debugBreakpoint = {
    bg = "#101e2a",
    fg = "#0087ff"
  },
  debugPC = {
    bg = "#2b2b2b"
  },
  diffAdded = {
    fg = "#a4e400"
  },
  diffChanged = {
    fg = "#ff9700"
  },
  diffFile = {
    fg = "#ffffff"
  },
  diffIndexLine = {
    fg = "#af87ff"
  },
  diffLine = {
    fg = "#af87ff"
  },
  diffNewFile = {
    fg = "#ff9700"
  },
  diffOldFile = {
    fg = "#ffff87"
  },
  diffRemoved = {
    fg = "#fc1a70"
  },
  diffSubname = {
    fg = "#ffff87"
  },
  gitcommitHeader = {
    fg = "#62d8f1"
  },
  gitcommitOverflow = {
    fg = "#fc1a70"
  },
  gitcommitSelectedFile = {
    fg = "#ffff87"
  },
  gitcommitSummary = {
    fg = "#ffffff"
  },
  healthError = {
    fg = "#ff005f"
  },
  healthSuccess = {
    fg = "#83dc78"
  },
  healthWarning = {
    fg = "#ff9700"
  },
  helpCommand = {
    bg = "#2b2b2b",
    fg = "#62d8f1"
  },
  lCursor = {
    bg = "#62d8f1",
    fg = "#121212"
  },
  markdownCode = {
    fg = "#af87ff"
  },
  markdownCodeBlock = {
    fg = "#ffff87"
  },
  markdownCodeDelimiter = {
    fg = "#a4e400"
  },
  markdownH1 = {
    bold = true,
    fg = "#ffffff"
  },
  markdownHeadingDelimiter = {
    fg = "#fc1a70"
  },
  markdownHeadingRule = {
    bold = true,
    fg = "#fc1a70"
  },
  markdownLinkDelimiter = {
    fg = "#62d8f1"
  },
  markdownLinkText = {
    fg = "#62d8f1",
    underline = true
  },
  markdownLinkTextDelimiter = {
    fg = "#62d8f1"
  },
  markdownListMarker = {
    fg = "#fc1a70"
  },
  markdownRule = {
    fg = "#62d8f1"
  },
  markdownUrl = {
    fg = "#ff9700"
  },
  mkdCode = {
    fg = "#af87ff"
  },
  mkdCodeDelimiter = {
    fg = "#af87ff"
  },
  mkdCodeEnd = {
    fg = "#a4e400"
  },
  mkdCodeStart = {
    fg = "#a4e400"
  },
  mkdDelimiter = {
    fg = "#62d8f1"
  },
  mkdHeading = {
    fg = "#fc1a70"
  },
  mkdLink = {
    fg = "#62d8f1",
    underline = true
  },
  mkdListItem = {
    fg = "#fc1a70"
  },
  mkdListItemCheckbox = {
    fg = "#fc1a70"
  },
  mkdURL = {
    fg = "#ff9700"
  },
  qfFileName = {
    fg = "#af87ff"
  },
  qfLineNr = {
    fg = "#8a8a8a"
  }
}