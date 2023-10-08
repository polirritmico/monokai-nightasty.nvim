local colors = {
  bg = "#1e1e1e",
  bg_dark = "#121212",
  bg_darker = "#121212",
  bg_float = "#2b2b2b",
  bg_highlight = "#343434",
  bg_menusel = "#383838",
  bg_menuselbar = "#4d4d4d",
  bg_popup = "#444444",
  bg_search = "#ffff87",
  bg_sidebar = "#2b2b2b",
  bg_status_alt = "#313131",
  bg_statusline = "#444444",
  bg_visual = "#444444",
  black = "#000001",
  blue = "#62d8f1",
  blue_alt = "#0087ff",
  border = "#62d8f1",
  border_highlight = "#ffffff",
  charcoal = "#262626",
  charcoal_light = "#313131",
  charcoal_medium = "#2b2b2b",
  comment = "#8a8a8a",
  diff = {
    add = "#323c1a",
    change = "#1a2e40",
    delete = "#401a28",
    text = "#0f538f"
  },
  error = "#ff005f",
  fg = "#ffffff",
  fg_dark = "#e8e8e8",
  fg_float = "#ffffff",
  fg_gutter = "#3e3e3e",
  fg_search = "#000001",
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
      italic = false
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
    fg = "#ff9700",
    italic = true
  },
  ["@preproc"] = {
    fg = "#8a8a8a",
    italic = true
  },
  ["@property"] = {
    fg = "#e8e8e8"
  },
  ["@property.ini"] = {
    fg = "#ff9700"
  },
  ["@punctuation.bracket"] = {
    fg = "#fc1a70"
  },
  ["@punctuation.bracket.markdown_inline"] = {
    fg = "#62d8f1"
  },
  ["@punctuation.delimiter"] = {
    fg = "#8a8a8a"
  },
  ["@string.documentation"] = {
    link = "Comment"
  },
  ["@string.escape"] = {
    fg = "#af87ff"
  },
  ["@string.regex"] = {
    fg = "#ff9700"
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
    fg = "#1e1e1e"
  },
  ["@text.diff.add"] = {
    link = "DiffAdd"
  },
  ["@text.diff.delete"] = {
    link = "DiffDelete"
  },
  ["@text.literal.markdown_inline"] = {
    fg = "#af87ff"
  },
  ["@text.quote"] = {
    bg = "#3e3e3e",
    fg = "#ffffff",
    italic = true
  },
  ["@text.reference"] = {
    fg = "#62d8f1",
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
    fg = "#fc1a70"
  },
  ["@text.todo.unchecked"] = {
    fg = "#fc1a70"
  },
  ["@text.uri"] = {
    fg = "#ff9700"
  },
  ["@text.warning"] = {
    bg = "#ff9700",
    fg = "#1e1e1e"
  },
  ["@type"] = {
    fg = "#62d8f1"
  },
  ["@type.builtin"] = {
    fg = "#62d8f1",
    italic = true
  },
  ["@type.qualifier.c_sharp"] = {
    fg = "#ff9700",
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
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#af87ff"
  },
  Character = {
    fg = "#af87ff"
  },
  CmpDocumentation = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  CmpDocumentationBorder = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  CmpGhostText = {
    fg = "#444444"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#ffffff"
  },
  CmpItemAbbrDeprecated = {
    fg = "#3e3e3e",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#fc1a70"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#fc1a70"
  },
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#62d8f1",
    italic = true
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#af87ff"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#62d8f1",
    italic = true
  },
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#0087ff"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#e8e8e8"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#62d8f1"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#62d8f1"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#af87ff"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#ffffff"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#a4e400"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#ff9700"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#fc1a70"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#a4e400"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#af87ff"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#fc1a70"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#ffffff"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#ff9700"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#0087ff"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#62d8f1"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#ff9700"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#ff9700"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#ff9700"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#ffffff"
  },
  CmpItemMenu = {
    fg = "#8a8a8a"
  },
  ColorColumn = {
    bg = "#1e1e1e"
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
    fg = "#1e1e1e"
  },
  CursorColumn = {
    bg = "#343434"
  },
  CursorIM = {
    bg = "#62d8f1",
    fg = "#1e1e1e"
  },
  CursorLine = {
    bg = "#343434"
  },
  CursorLineNr = {
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
    bg = "#301c23",
    fg = "#ff005f"
  },
  DiagnosticVirtualTextHint = {
    bg = "#262d25",
    fg = "#83dc78"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#1c2630",
    fg = "#0087ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#30281c",
    fg = "#ff9700"
  },
  DiagnosticWarn = {
    fg = "#ff9700"
  },
  DiffAdd = {
    bg = "#323c1a",
    fg = "#a4e400"
  },
  DiffChange = {
    bg = "#1a2e40"
  },
  DiffDelete = {
    bg = "#401a28",
    fg = "#fc1a70"
  },
  DiffText = {
    bg = "#0f538f"
  },
  Directory = {
    fg = "#af87ff"
  },
  DirvishArg = {
    bg = "#585858",
    fg = "#ffff87"
  },
  DirvishPathTail = {
    fg = "#62d8f1"
  },
  DirvishSuffix = {
    fg = "#585858"
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
  GitSignsAdd = {
    link = "diffAdded"
  },
  GitSignsAddInline = {
    bg = "#a4e400",
    fg = "#323c1a"
  },
  GitSignsChange = {
    link = "diffChanged"
  },
  GitSignsChangeInline = {
    bg = "#0087ff",
    fg = "#1a2e40"
  },
  GitSignsCurrentLineBlame = {
    bg = "#444444",
    fg = "#0087ff",
    italic = true
  },
  GitSignsDelete = {
    link = "diffRemoved"
  },
  GitSignsDeleteInline = {
    bg = "#fc1a70",
    fg = "#401a28"
  },
  Hlargs = {
    fg = "#ffff87"
  },
  IblIndent = {
    fg = "#3e3e3e",
    nocombine = true
  },
  IblScope = {
    fg = "#62d8f1",
    nocombine = true
  },
  IblWhitespace = {
    fg = "#e8e8e8",
    nocombine = true
  },
  Identifier = {
    fg = "#ffffff",
    style = {}
  },
  IncSearch = {
    bg = "#af87ff",
    fg = "#000001"
  },
  Include = {
    fg = "#fc1a70"
  },
  IndentBlanklineChar = {
    fg = "#3e3e3e",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#62d8f1",
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
      italic = false
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
  LspInfoBorder = {
    bg = "#2b2b2b",
    fg = "#ffffff"
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
  NotifyBackground = {
    bg = "#1e1e1e",
    fg = "#ffffff"
  },
  NotifyDEBUGBody = {
    link = "Normal"
  },
  NotifyDEBUGBorder = {
    bg = "NONE",
    fg = "#3e3e3e"
  },
  NotifyDEBUGIcon = {
    fg = "#8a8a8a"
  },
  NotifyDEBUGTitle = {
    fg = "#8a8a8a"
  },
  NotifyERRORBody = {
    link = "Normal"
  },
  NotifyERRORBorder = {
    bg = "NONE",
    fg = "#621532"
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
    bg = "NONE",
    fg = "#153e62"
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
    bg = "NONE",
    fg = "#4a3e62"
  },
  NotifyTRACEIcon = {
    fg = "#af87ff"
  },
  NotifyTRACETitle = {
    fg = "#af87ff"
  },
  NotifyWARNBody = {
    link = "Normal"
  },
  NotifyWARNBorder = {
    bg = "NONE",
    fg = "#624215"
  },
  NotifyWARNIcon = {
    fg = "#ff9700"
  },
  NotifyWARNTitle = {
    fg = "#ff9700"
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
    bg = "#343434"
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
    fg = "#ffffff"
  },
  PmenuSbar = {
    bg = "#4d4d4d"
  },
  PmenuSel = {
    bg = "#383838",
    fg = "#fc1a70"
  },
  PmenuThumb = {
    bg = "#8a8a8a",
    fg = "#4b4b4b"
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
  RainbowDelimiterBlue = {
    fg = "#0087ff"
  },
  RainbowDelimiterCyan = {
    fg = "#62d8f1"
  },
  RainbowDelimiterGreen = {
    fg = "#a4e400"
  },
  RainbowDelimiterOrange = {
    fg = "#ff9700"
  },
  RainbowDelimiterRed = {
    fg = "#fc1a70"
  },
  RainbowDelimiterViolet = {
    fg = "#af87ff"
  },
  RainbowDelimiterYellow = {
    fg = "#ffff87"
  },
  Repeat = {
    fg = "#fc1a70"
  },
  Search = {
    bg = "#ffff87",
    bold = true,
    fg = "#000001"
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
    fg = "#000001"
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
    bg = "#1e1e1e"
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
    fg = "#1e1e1e"
  },
  TermCursorNC = {
    bg = "#e8e8e8",
    fg = "#1e1e1e"
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
    fg = "#000001"
  },
  TodoBgNOTE = {
    bg = "#ffff87",
    bold = true,
    fg = "#000001"
  },
  TodoBgPERF = {
    bg = "#62d8f1",
    bold = true,
    fg = "#000001"
  },
  TodoBgTEST = {
    bg = "#a4e400",
    bold = true,
    fg = "#000001"
  },
  TodoBgTODO = {
    bg = "#af87ff",
    bold = true,
    fg = "#121212"
  },
  TodoBgWARN = {
    bg = "#ff9700",
    bold = true,
    fg = "#000001"
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
    bg = "#1b2935",
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
  dosbatchError = {
    fg = "#ff005f"
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
    bg = "#62d8f1",
    fg = "#1e1e1e"
  },
  qfFileName = {
    fg = "#af87ff"
  },
  qfLineNr = {
    fg = "#8a8a8a"
  }
}