local colors = {
  bg = "#ffffff",
  bg_columns = "#fbfbfb",
  bg_dark = "#e1e1e1",
  bg_darker = "#d0d0d0",
  bg_float = "#e3e3e3",
  bg_highlight = "#ebebeb",
  bg_menusel = "#d4d4d4",
  bg_menuselbar = "#d5d5d5",
  bg_popup = "#dedede",
  bg_search = "#ff8f00",
  bg_sidebar = "#f1f1f1",
  bg_status_alt = "#e3e3e3",
  bg_statusline = "#f1f1f1",
  bg_visual = "#e3e3e3",
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
  fg_search = "#ffffff",
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
  note = "#ff8f00",
  orange = "#ff4d00",
  purple = "#6054d0",
  rainbow = { "#333333", "#ff8f00", "#ff4d00", "#ff005f", "#6054d0", "#00b3e3" },
  rainbow_bg = { "#f1f1f1", "#fff7ed", "#fff3ed", "#ffedf4", "#f4f3fc", "#edfafd" },
  red = "#ff005f",
  terminal_black = "#bfbfbf",
  todo = "#6054d0",
  warning = "#ff4d00",
  white = "#ffffff",
  yellow = "#ff8f00",
  yellow_alt = "#f6f557"
}

local highlights = {
  ["@OrgTSHeadlineLevel1"] = {
    bg = "#f1f1f1",
    bold = true
  },
  ["@OrgTSHeadlineLevel2"] = {
    bg = "#fff7ed",
    bold = true
  },
  ["@OrgTSHeadlineLevel3"] = {
    bg = "#fff3ed",
    bold = true
  },
  ["@OrgTSHeadlineLevel4"] = {
    bg = "#ffedf4",
    bold = true
  },
  ["@OrgTSHeadlineLevel5"] = {
    bg = "#f4f3fc",
    bold = true
  },
  ["@OrgTSHeadlineLevel6"] = {
    bg = "#edfafd",
    bold = true
  },
  ["@attribute"] = {
    link = "PreProc"
  },
  ["@attribute.builtin"] = {
    fg = "#ff004b",
    italic = true
  },
  ["@boolean"] = {
    link = "Boolean"
  },
  ["@character"] = {
    link = "Character"
  },
  ["@character.special"] = {
    link = "SpecialChar"
  },
  ["@comment"] = {
    link = "Comment"
  },
  ["@comment.documentation"] = {
    link = "Comment"
  },
  ["@constant"] = {
    link = "Constant"
  },
  ["@constant.builtin"] = {
    link = "Special"
  },
  ["@constant.macro"] = {
    link = "Define"
  },
  ["@constructor"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#ff004b"
  },
  ["@diff.delta"] = {
    link = "DiffChange"
  },
  ["@diff.minus"] = {
    link = "DiffDelete"
  },
  ["@diff.plus"] = {
    link = "DiffAdd"
  },
  ["@function"] = {
    link = "Function"
  },
  ["@function.builtin"] = {
    fg = "#4fb000"
  },
  ["@function.builtin.bash"] = {
    fg = "#00b3e3"
  },
  ["@function.call"] = {
    link = "@function"
  },
  ["@function.macro"] = {
    link = "Macro"
  },
  ["@function.method"] = {
    link = "Function"
  },
  ["@function.method.call"] = {
    link = "@function.method"
  },
  ["@keyword"] = {
    fg = "#ff004b",
    style = {
      italic = false
    }
  },
  ["@keyword.conditional"] = {
    link = "Conditional"
  },
  ["@keyword.conditional.ternary"] = {
    link = "Conditional"
  },
  ["@keyword.coroutine"] = {
    link = "@keyword"
  },
  ["@keyword.debug"] = {
    link = "Debug"
  },
  ["@keyword.directive"] = {
    fg = "#a2a2a2",
    nocombine = true
  },
  ["@keyword.directive.define"] = {
    link = "Define"
  },
  ["@keyword.exception"] = {
    link = "Exception"
  },
  ["@keyword.function"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@keyword.import"] = {
    link = "Include"
  },
  ["@keyword.operator"] = {
    link = "Operator"
  },
  ["@keyword.repeat"] = {
    link = "Repeat"
  },
  ["@keyword.return"] = {
    link = "@keyword"
  },
  ["@keyword.storage"] = {
    link = "StorageClass"
  },
  ["@lsp.type.boolean"] = {
    link = "Boolean"
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
    link = "@markup.list"
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
    link = "@module"
  },
  ["@lsp.type.number"] = {
    link = "@number"
  },
  ["@lsp.type.operator"] = {
    link = "Operator"
  },
  ["@lsp.type.parameter"] = {
    link = "@variable.parameter"
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
    link = "Operator"
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
  ["@lsp.typemod.variable.global.lua"] = {
    link = "@variable.builtin"
  },
  ["@lsp.typemod.variable.injected"] = {
    link = "@variable"
  },
  ["@lsp.typemod.variable.static"] = {
    link = "@constant"
  },
  ["@markup"] = {
    link = "@none"
  },
  ["@markup.environment"] = {
    link = "Macro"
  },
  ["@markup.environment.name"] = {
    link = "Type"
  },
  ["@markup.heading"] = {
    link = "Title"
  },
  ["@markup.heading.1"] = {
    link = "Title"
  },
  ["@markup.heading.1.marker"] = {
    link = "@tag"
  },
  ["@markup.heading.2"] = {
    link = "Title"
  },
  ["@markup.heading.2.marker"] = {
    link = "@tag"
  },
  ["@markup.heading.3"] = {
    link = "Title"
  },
  ["@markup.heading.3.marker"] = {
    link = "@tag"
  },
  ["@markup.heading.4"] = {
    link = "Title"
  },
  ["@markup.heading.4.marker"] = {
    link = "@tag"
  },
  ["@markup.heading.5"] = {
    link = "Title"
  },
  ["@markup.heading.5.marker"] = {
    link = "@tag"
  },
  ["@markup.heading.6"] = {
    link = "Title"
  },
  ["@markup.heading.6.marker"] = {
    link = "@tag"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#00b3e3"
  },
  ["@markup.link.label"] = {
    fg = "#00b3e3",
    underline = true
  },
  ["@markup.link.label.symbol"] = {
    link = "Identifier"
  },
  ["@markup.link.url"] = {
    fg = "#ff4d00"
  },
  ["@markup.list"] = {
    fg = "#ff004b"
  },
  ["@markup.list.checked"] = {
    fg = "#ff004b"
  },
  ["@markup.list.unchecked"] = {
    fg = "#ff004b"
  },
  ["@markup.math"] = {
    link = "Special"
  },
  ["@markup.quote"] = {
    bg = "#c9c9c9",
    fg = "#333333",
    italic = true
  },
  ["@markup.raw"] = {
    link = "String"
  },
  ["@markup.raw.block"] = {
    fg = "#7f7f7f"
  },
  ["@markup.raw.delimiter.markdown_inline"] = {
    fg = "#6054d0"
  },
  ["@markup.raw.markdown_inline"] = {
    fg = "#6054d0"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = {
    link = "Include"
  },
  ["@none"] = {},
  ["@number"] = {
    link = "Number"
  },
  ["@number.float"] = {
    link = "Float"
  },
  ["@operator"] = {
    link = "Operator"
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
  ["@punctuation.delimiter"] = {
    fg = "#7f7f7f"
  },
  ["@punctuation.special"] = {
    link = "Delimiter"
  },
  ["@string"] = {
    link = "String"
  },
  ["@string.documentation"] = {},
  ["@string.escape"] = {
    fg = "#6054d0"
  },
  ["@string.regexp"] = {
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
  ["@type"] = {
    fg = "#00b3e3"
  },
  ["@type.builtin"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@type.definition"] = {
    link = "Typedef"
  },
  ["@type.qualifier"] = {
    link = "@keyword"
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
  ["@variable.member"] = {
    fg = "#333333"
  },
  ["@variable.parameter"] = {
    fg = "#ff4d00",
    italic = true
  },
  AerialArrayIcon = {
    link = "LspKindArray"
  },
  AerialBooleanIcon = {
    link = "LspKindBoolean"
  },
  AerialClassIcon = {
    link = "LspKindClass"
  },
  AerialCodeiumIcon = {
    link = "LspKindCodeium"
  },
  AerialColorIcon = {
    link = "LspKindColor"
  },
  AerialConstantIcon = {
    link = "LspKindConstant"
  },
  AerialConstructorIcon = {
    link = "LspKindConstructor"
  },
  AerialCopilotIcon = {
    link = "LspKindCopilot"
  },
  AerialDefaultIcon = {
    link = "LspKindDefault"
  },
  AerialEnumIcon = {
    link = "LspKindEnum"
  },
  AerialEnumMemberIcon = {
    link = "LspKindEnumMember"
  },
  AerialEventIcon = {
    link = "LspKindEvent"
  },
  AerialFieldIcon = {
    link = "LspKindField"
  },
  AerialFileIcon = {
    link = "LspKindFile"
  },
  AerialFolderIcon = {
    link = "LspKindFolder"
  },
  AerialFunctionIcon = {
    link = "LspKindFunction"
  },
  AerialGuide = {
    fg = "#c9c9c9"
  },
  AerialInterfaceIcon = {
    link = "LspKindInterface"
  },
  AerialKeyIcon = {
    link = "LspKindKey"
  },
  AerialKeywordIcon = {
    link = "LspKindKeyword"
  },
  AerialLine = {
    link = "LspInlayHint"
  },
  AerialMethodIcon = {
    link = "LspKindMethod"
  },
  AerialModuleIcon = {
    link = "LspKindModule"
  },
  AerialNamespaceIcon = {
    link = "LspKindNamespace"
  },
  AerialNormal = {
    bg = "NONE",
    fg = "#333333"
  },
  AerialNullIcon = {
    link = "LspKindNull"
  },
  AerialNumberIcon = {
    link = "LspKindNumber"
  },
  AerialObjectIcon = {
    link = "LspKindObject"
  },
  AerialOperatorIcon = {
    link = "LspKindOperator"
  },
  AerialPackageIcon = {
    link = "LspKindPackage"
  },
  AerialPropertyIcon = {
    link = "LspKindProperty"
  },
  AerialReferenceIcon = {
    link = "LspKindReference"
  },
  AerialSnippetIcon = {
    link = "LspKindSnippet"
  },
  AerialStringIcon = {
    link = "LspKindString"
  },
  AerialStructIcon = {
    link = "LspKindStruct"
  },
  AerialTextIcon = {
    link = "LspKindText"
  },
  AerialTypeParameterIcon = {
    link = "LspKindTypeParameter"
  },
  AerialUnitIcon = {
    link = "LspKindUnit"
  },
  AerialValueIcon = {
    link = "LspKindValue"
  },
  AerialVariableIcon = {
    link = "LspKindVariable"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#6054d0"
  },
  BufferLineIndicatorSelected = {
    fg = "#ff4d00"
  },
  Character = {
    fg = "#6054d0"
  },
  CmpDocumentation = {
    bg = "#e3e3e3",
    fg = "#333333"
  },
  CmpDocumentationBorder = {
    bg = "#e3e3e3",
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
  CmpItemKindArray = {
    link = "LspKindArray"
  },
  CmpItemKindBoolean = {
    link = "LspKindBoolean"
  },
  CmpItemKindClass = {
    link = "LspKindClass"
  },
  CmpItemKindCodeium = {
    link = "LspKindCodeium"
  },
  CmpItemKindColor = {
    link = "LspKindColor"
  },
  CmpItemKindConstant = {
    link = "LspKindConstant"
  },
  CmpItemKindConstructor = {
    link = "LspKindConstructor"
  },
  CmpItemKindCopilot = {
    link = "LspKindCopilot"
  },
  CmpItemKindDefault = {
    link = "LspKindDefault"
  },
  CmpItemKindEnum = {
    link = "LspKindEnum"
  },
  CmpItemKindEnumMember = {
    link = "LspKindEnumMember"
  },
  CmpItemKindEvent = {
    link = "LspKindEvent"
  },
  CmpItemKindField = {
    link = "LspKindField"
  },
  CmpItemKindFile = {
    link = "LspKindFile"
  },
  CmpItemKindFolder = {
    link = "LspKindFolder"
  },
  CmpItemKindFunction = {
    link = "LspKindFunction"
  },
  CmpItemKindInterface = {
    link = "LspKindInterface"
  },
  CmpItemKindKey = {
    link = "LspKindKey"
  },
  CmpItemKindKeyword = {
    link = "LspKindKeyword"
  },
  CmpItemKindMethod = {
    link = "LspKindMethod"
  },
  CmpItemKindModule = {
    link = "LspKindModule"
  },
  CmpItemKindNamespace = {
    link = "LspKindNamespace"
  },
  CmpItemKindNull = {
    link = "LspKindNull"
  },
  CmpItemKindNumber = {
    link = "LspKindNumber"
  },
  CmpItemKindObject = {
    link = "LspKindObject"
  },
  CmpItemKindOperator = {
    link = "LspKindOperator"
  },
  CmpItemKindPackage = {
    link = "LspKindPackage"
  },
  CmpItemKindProperty = {
    link = "LspKindProperty"
  },
  CmpItemKindReference = {
    link = "LspKindReference"
  },
  CmpItemKindSnippet = {
    link = "LspKindSnippet"
  },
  CmpItemKindString = {
    link = "LspKindString"
  },
  CmpItemKindStruct = {
    link = "LspKindStruct"
  },
  CmpItemKindText = {
    link = "LspKindText"
  },
  CmpItemKindTypeParameter = {
    link = "LspKindTypeParameter"
  },
  CmpItemKindUnit = {
    link = "LspKindUnit"
  },
  CmpItemKindValue = {
    link = "LspKindValue"
  },
  CmpItemKindVariable = {
    link = "LspKindVariable"
  },
  CmpItemMenu = {
    fg = "#7f7f7f"
  },
  CodeBlock = {
    bg = "#e1e1e1"
  },
  ColorColumn = {
    bg = "#fbfbfb"
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
  Dash = {
    bold = true,
    fg = "#ff4d00"
  },
  DashboardDesc = {
    fg = "#ff004b"
  },
  DashboardFiles = {
    fg = "#4c4c4c"
  },
  DashboardFooter = {
    fg = "#7f7f7f",
    italic = true
  },
  DashboardHeader = {
    fg = "#ff4d00"
  },
  DashboardIcon = {
    fg = "#333333"
  },
  DashboardKey = {
    fg = "#6054d0"
  },
  DashboardMruIcon = {
    fg = "#333333"
  },
  DashboardMruTitle = {
    bold = true,
    fg = "#ff004b"
  },
  DashboardProjectIcon = {
    fg = "#00b3e3"
  },
  DashboardProjectTitle = {
    bold = true,
    fg = "#ff004b"
  },
  DashboardProjectTitleIcon = {
    fg = "#333333"
  },
  DashboardShortCut = {
    fg = "#6054d0"
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
    bg = "#e3e3e3",
    fg = "#333333"
  },
  FloatTitle = {
    bg = "#e3e3e3",
    fg = "#333333"
  },
  FoldColumn = {
    bg = "#e3e3e3",
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
    sp = "#4fb000",
    undercurl = true
  },
  GitSignsChange = {
    link = "diffChanged"
  },
  GitSignsChangeInline = {
    sp = "#0087ff",
    undercurl = true
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
  Headline = {
    link = "Headline1"
  },
  Headline1 = {
    bg = "#dedede",
    bold = true
  },
  Headline2 = {
    bg = "#dedede",
    bold = true
  },
  Headline3 = {
    bg = "#dedede",
    bold = true
  },
  Headline4 = {
    bg = "#dedede",
    bold = true
  },
  Headline5 = {
    bg = "#dedede",
    bold = true
  },
  Headline6 = {
    bg = "#dedede",
    bold = true
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
    bold = true,
    fg = "#ffffff"
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
  KindConceal = {
    fg = "#0087ff"
  },
  KindParameter = {
    fg = "#ff4d00"
  },
  KindText = {
    fg = "#333333"
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
  LazyReasonCmd = {
    fg = "#00b3e3"
  },
  LazyReasonEvent = {
    fg = "#ff4d00"
  },
  LazyReasonSource = {
    fg = "#ff8f00"
  },
  LineNr = {
    fg = "#c9c9c9"
  },
  LineNrBe = {
    fg = "#4fb000"
  },
  LspInfoBorder = {
    bg = "#e3e3e3",
    fg = "#333333"
  },
  LspKindArray = {
    link = "@punctuation.bracket"
  },
  LspKindBoolean = {
    link = "Boolean"
  },
  LspKindClass = {
    link = "@type.builtin"
  },
  LspKindCodeium = {
    link = "KindConceal"
  },
  LspKindColor = {
    link = "Special"
  },
  LspKindConstant = {
    link = "@constant"
  },
  LspKindConstructor = {
    link = "@constructor"
  },
  LspKindCopilot = {
    link = "KindConceal"
  },
  LspKindDefault = {
    link = "@property"
  },
  LspKindEnum = {
    link = "@lsp.type.enum"
  },
  LspKindEnumMember = {
    link = "Structure"
  },
  LspKindEvent = {
    link = "Special"
  },
  LspKindField = {
    link = "@variable.member"
  },
  LspKindFile = {
    link = "Normal"
  },
  LspKindFolder = {
    link = "Directory"
  },
  LspKindFunction = {
    link = "@function"
  },
  LspKindInterface = {
    link = "KindParameter"
  },
  LspKindKey = {
    link = "@variable.member"
  },
  LspKindKeyword = {
    link = "@keyword"
  },
  LspKindMethod = {
    link = "@function.method"
  },
  LspKindModule = {
    link = "Special"
  },
  LspKindNamespace = {
    link = "KindText"
  },
  LspKindNull = {
    link = "@constant.builtin"
  },
  LspKindNumber = {
    link = "@number"
  },
  LspKindObject = {
    link = "@constant"
  },
  LspKindOperator = {
    link = "Operator"
  },
  LspKindPackage = {
    link = "@module"
  },
  LspKindProperty = {
    link = "@property"
  },
  LspKindReference = {
    link = "@markup.link.url"
  },
  LspKindSnippet = {
    link = "KindConceal"
  },
  LspKindString = {
    link = "@string"
  },
  LspKindStruct = {
    link = "Structure"
  },
  LspKindText = {
    link = "@markup"
  },
  LspKindTypeParameter = {
    link = "KindParameter"
  },
  LspKindUnit = {
    link = "Structure"
  },
  LspKindValue = {
    link = "KindParameter"
  },
  LspKindVariable = {
    link = "@variable"
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
  MiniIndentscopeSymbol = {
    fg = "#ff9466",
    nocombine = true
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
  NavicIconsArray = {
    link = "LspKindArray"
  },
  NavicIconsBoolean = {
    link = "LspKindBoolean"
  },
  NavicIconsClass = {
    link = "LspKindClass"
  },
  NavicIconsCodeium = {
    link = "LspKindCodeium"
  },
  NavicIconsColor = {
    link = "LspKindColor"
  },
  NavicIconsConstant = {
    link = "LspKindConstant"
  },
  NavicIconsConstructor = {
    link = "LspKindConstructor"
  },
  NavicIconsCopilot = {
    link = "LspKindCopilot"
  },
  NavicIconsDefault = {
    link = "LspKindDefault"
  },
  NavicIconsEnum = {
    link = "LspKindEnum"
  },
  NavicIconsEnumMember = {
    link = "LspKindEnumMember"
  },
  NavicIconsEvent = {
    link = "LspKindEvent"
  },
  NavicIconsField = {
    link = "LspKindField"
  },
  NavicIconsFile = {
    link = "LspKindFile"
  },
  NavicIconsFolder = {
    link = "LspKindFolder"
  },
  NavicIconsFunction = {
    link = "LspKindFunction"
  },
  NavicIconsInterface = {
    link = "LspKindInterface"
  },
  NavicIconsKey = {
    link = "LspKindKey"
  },
  NavicIconsKeyword = {
    link = "LspKindKeyword"
  },
  NavicIconsMethod = {
    link = "LspKindMethod"
  },
  NavicIconsModule = {
    link = "LspKindModule"
  },
  NavicIconsNamespace = {
    link = "LspKindNamespace"
  },
  NavicIconsNull = {
    link = "LspKindNull"
  },
  NavicIconsNumber = {
    link = "LspKindNumber"
  },
  NavicIconsObject = {
    link = "LspKindObject"
  },
  NavicIconsOperator = {
    link = "LspKindOperator"
  },
  NavicIconsPackage = {
    link = "LspKindPackage"
  },
  NavicIconsProperty = {
    link = "LspKindProperty"
  },
  NavicIconsReference = {
    link = "LspKindReference"
  },
  NavicIconsSnippet = {
    link = "LspKindSnippet"
  },
  NavicIconsString = {
    link = "LspKindString"
  },
  NavicIconsStruct = {
    link = "LspKindStruct"
  },
  NavicIconsText = {
    link = "LspKindText"
  },
  NavicIconsTypeParameter = {
    link = "LspKindTypeParameter"
  },
  NavicIconsUnit = {
    link = "LspKindUnit"
  },
  NavicIconsValue = {
    link = "LspKindValue"
  },
  NavicIconsVariable = {
    link = "LspKindVariable"
  },
  NavicSeparator = {
    bg = "NONE",
    fg = "#333333"
  },
  NavicText = {
    bg = "NONE",
    fg = "#333333"
  },
  NeoTreeDimText = {
    fg = "#c9c9c9"
  },
  NeoTreeDirectoryIcon = {
    fg = "#00b3e3"
  },
  NeoTreeDirectoryName = {
    fg = "#333333"
  },
  NeoTreeFileNameOpened = {
    fg = "#ff4d00"
  },
  NeoTreeGitAdded = {
    fg = "#4fb000"
  },
  NeoTreeGitDeleted = {
    fg = "#ff004b"
  },
  NeoTreeGitModified = {
    fg = "#ff4d00"
  },
  NeoTreeIndentMarkder = {
    fg = "#c9c9c9"
  },
  NeoTreeNormal = {
    bg = "#f1f1f1",
    fg = "#171717"
  },
  NeoTreeNormalNC = {
    bg = "#f1f1f1",
    fg = "#171717"
  },
  NeoTreeRootName = {
    fg = "#ff004b",
    italic = true
  },
  NeoTreeWinSeparator = {
    link = "NvimTreeWinSeparator"
  },
  NoiceCompletionItemKindArray = {
    link = "LspKindArray"
  },
  NoiceCompletionItemKindBoolean = {
    link = "LspKindBoolean"
  },
  NoiceCompletionItemKindClass = {
    link = "LspKindClass"
  },
  NoiceCompletionItemKindCodeium = {
    link = "LspKindCodeium"
  },
  NoiceCompletionItemKindColor = {
    link = "LspKindColor"
  },
  NoiceCompletionItemKindConstant = {
    link = "LspKindConstant"
  },
  NoiceCompletionItemKindConstructor = {
    link = "LspKindConstructor"
  },
  NoiceCompletionItemKindCopilot = {
    link = "LspKindCopilot"
  },
  NoiceCompletionItemKindDefault = {
    link = "LspKindDefault"
  },
  NoiceCompletionItemKindEnum = {
    link = "LspKindEnum"
  },
  NoiceCompletionItemKindEnumMember = {
    link = "LspKindEnumMember"
  },
  NoiceCompletionItemKindEvent = {
    link = "LspKindEvent"
  },
  NoiceCompletionItemKindField = {
    link = "LspKindField"
  },
  NoiceCompletionItemKindFile = {
    link = "LspKindFile"
  },
  NoiceCompletionItemKindFolder = {
    link = "LspKindFolder"
  },
  NoiceCompletionItemKindFunction = {
    link = "LspKindFunction"
  },
  NoiceCompletionItemKindInterface = {
    link = "LspKindInterface"
  },
  NoiceCompletionItemKindKey = {
    link = "LspKindKey"
  },
  NoiceCompletionItemKindKeyword = {
    link = "LspKindKeyword"
  },
  NoiceCompletionItemKindMethod = {
    link = "LspKindMethod"
  },
  NoiceCompletionItemKindModule = {
    link = "LspKindModule"
  },
  NoiceCompletionItemKindNamespace = {
    link = "LspKindNamespace"
  },
  NoiceCompletionItemKindNull = {
    link = "LspKindNull"
  },
  NoiceCompletionItemKindNumber = {
    link = "LspKindNumber"
  },
  NoiceCompletionItemKindObject = {
    link = "LspKindObject"
  },
  NoiceCompletionItemKindOperator = {
    link = "LspKindOperator"
  },
  NoiceCompletionItemKindPackage = {
    link = "LspKindPackage"
  },
  NoiceCompletionItemKindProperty = {
    link = "LspKindProperty"
  },
  NoiceCompletionItemKindReference = {
    link = "LspKindReference"
  },
  NoiceCompletionItemKindSnippet = {
    link = "LspKindSnippet"
  },
  NoiceCompletionItemKindString = {
    link = "LspKindString"
  },
  NoiceCompletionItemKindStruct = {
    link = "LspKindStruct"
  },
  NoiceCompletionItemKindText = {
    link = "LspKindText"
  },
  NoiceCompletionItemKindTypeParameter = {
    link = "LspKindTypeParameter"
  },
  NoiceCompletionItemKindUnit = {
    link = "LspKindUnit"
  },
  NoiceCompletionItemKindValue = {
    link = "LspKindValue"
  },
  NoiceCompletionItemKindVariable = {
    link = "LspKindVariable"
  },
  NoiceFormatProgressDone = {
    bg = "#ff4d00",
    bold = true,
    fg = "#333333"
  },
  NoiceLspProgressSpinner = {
    fg = "#4fb000"
  },
  NoiceLspProgressTitle = {
    fg = "#ff4d00",
    italic = true
  },
  NoiceMini = {
    bg = "#e3e3e3"
  },
  NonText = {
    fg = "#bfbfbf"
  },
  Normal = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NormalFloat = {
    bg = "#e3e3e3",
    fg = "#333333"
  },
  NormalNC = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NormalSB = {
    bg = "#f1f1f1",
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
  NvimInternalError = {
    bg = "#ff0000",
    fg = "#333333"
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
    bg = "#f1f1f1",
    fg = "#171717"
  },
  NvimTreeNormalNC = {
    bg = "#f1f1f1",
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
    bg = "#f1f1f1",
    fg = "#f1f1f1"
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
    bg = "#d4d4d4",
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
  Quote = {
    bg = "#c9c9c9",
    fg = "#ffffff"
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
    bg = "#f1f1f1",
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
    bg = "#e3e3e3",
    fg = "#333333"
  },
  TelescopeNormal = {
    bg = "#e3e3e3",
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
    bg = "#f1f1f1"
  },
  TreesitterContextBottom = {
    sp = "#00b3e3",
    underline = true
  },
  TreesitterContextLineNumber = {
    bg = "#f1f1f1",
    fg = "#a5a5a5"
  },
  TreesitterContextLineNumberBottom = {
    fg = "#ff8f00",
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
    bg = "#e3e3e3"
  },
  WarningMsg = {
    fg = "#ff4d00"
  },
  WhichKey = {
    fg = "#ff8f00"
  },
  WhichKeyBorder = {
    bg = "#f1f1f1"
  },
  WhichKeyDesc = {
    fg = "#333333"
  },
  WhichKeyFloat = {
    bg = "#f1f1f1"
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
  WinBar = {
    link = "StatusLine"
  },
  WinBarNC = {
    link = "StatusLineNC"
  },
  WinSeparator = {
    fg = "#00b3e3"
  },
  debugBreakpoint = {
    bg = "#e6f3ff",
    fg = "#0087ff"
  },
  debugPC = {
    bg = "#f1f1f1"
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
    bg = "#e3e3e3",
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
  netrwClassify = {
    fg = "#ff004b"
  },
  netrwCmdNote = {
    fg = "#171717"
  },
  netrwDir = {
    fg = "#ff8f00"
  },
  netrwExe = {
    fg = "#ff4d00"
  },
  netrwHelpCmd = {
    bold = true,
    fg = "#ff4d00"
  },
  netrwLink = {
    fg = "#ff004b"
  },
  netrwList = {
    fg = "#ff8f00"
  },
  netrwMarkFile = {
    bg = "#ff4d00",
    bold = true,
    fg = "#000001"
  },
  netrwPlain = {
    fg = "#171717"
  },
  netrwQuickHelp = {
    fg = "#171717",
    italic = true
  },
  netrwSymLink = {
    fg = "#00b3e3",
    italic = true
  },
  netrwTreeBar = {
    fg = "#c9c9c9",
    nocombine = true
  },
  netrwVersion = {
    fg = "#ff4d00",
    italic = true
  },
  qfFileName = {
    fg = "#6054d0"
  },
  qfLineNr = {
    fg = "#7f7f7f"
  }
}