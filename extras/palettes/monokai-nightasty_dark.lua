local colors = {
  bg = "#2b2b2b",
  bg_columns = "#2f2f2f",
  bg_dark = "#1e1e1e",
  bg_darker = "#121212",
  bg_float = "#262626",
  bg_highlight = "#404040",
  bg_menusel = "#3a3a3a",
  bg_menuselbar = "#4d4d4d",
  bg_popup = "#444444",
  bg_search = "#ffff87",
  bg_sidebar = "#262626",
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
    add = "#3d4725",
    change = "#25394b",
    delete = "#4b2533",
    text = "#165995"
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
  note = "#ffff87",
  orange = "#ff9700",
  purple = "#af87ff",
  rainbow = { "#ffffff", "#ffff87", "#ff9700", "#ff005f", "#af87ff", "#62d8f1" },
  rainbow_bg = { "#3a3a3a", "#3a3a31", "#3a3328", "#3a282f", "#34313a", "#2f3739" },
  red = "#ff005f",
  terminal_black = "#444444",
  todo = "#af87ff",
  warning = "#ff9700",
  white = "#ffffff",
  yellow = "#ffff87",
  yellow_alt = "#f6f557"
}

local highlights = {
  ["@OrgTSHeadlineLevel1"] = {
    bg = "#3a3a3a",
    bold = true
  },
  ["@OrgTSHeadlineLevel2"] = {
    bg = "#3a3a31",
    bold = true
  },
  ["@OrgTSHeadlineLevel3"] = {
    bg = "#3a3328",
    bold = true
  },
  ["@OrgTSHeadlineLevel4"] = {
    bg = "#3a282f",
    bold = true
  },
  ["@OrgTSHeadlineLevel5"] = {
    bg = "#34313a",
    bold = true
  },
  ["@OrgTSHeadlineLevel6"] = {
    bg = "#2f3739",
    bold = true
  },
  ["@attribute"] = {
    link = "PreProc"
  },
  ["@attribute.builtin"] = {
    fg = "#fc1a70",
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
    fg = "#62d8f1",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#fc1a70"
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
    fg = "#a4e400"
  },
  ["@function.builtin.bash"] = {
    fg = "#62d8f1"
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
    fg = "#fc1a70",
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
    fg = "#707070",
    nocombine = true
  },
  ["@keyword.directive.define"] = {
    link = "Define"
  },
  ["@keyword.exception"] = {
    link = "Exception"
  },
  ["@keyword.function"] = {
    fg = "#62d8f1",
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
    fg = "#62d8f1"
  },
  ["@markup.link.label"] = {
    fg = "#62d8f1",
    underline = true
  },
  ["@markup.link.label.symbol"] = {
    link = "Identifier"
  },
  ["@markup.link.url"] = {
    fg = "#ff9700"
  },
  ["@markup.list"] = {
    fg = "#fc1a70"
  },
  ["@markup.list.checked"] = {
    fg = "#fc1a70"
  },
  ["@markup.list.unchecked"] = {
    fg = "#fc1a70"
  },
  ["@markup.math"] = {
    link = "Special"
  },
  ["@markup.quote"] = {
    bg = "#3e3e3e",
    fg = "#ffffff",
    italic = true
  },
  ["@markup.raw"] = {
    link = "String"
  },
  ["@markup.raw.block"] = {
    fg = "#8a8a8a"
  },
  ["@markup.raw.delimiter.markdown_inline"] = {
    fg = "#af87ff"
  },
  ["@markup.raw.markdown_inline"] = {
    fg = "#af87ff"
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
    fg = "#e8e8e8"
  },
  ["@property.ini"] = {
    fg = "#ff9700"
  },
  ["@punctuation.bracket"] = {
    fg = "#fc1a70"
  },
  ["@punctuation.delimiter"] = {
    fg = "#8a8a8a"
  },
  ["@punctuation.special"] = {
    link = "Delimiter"
  },
  ["@string"] = {
    link = "String"
  },
  ["@string.documentation"] = {},
  ["@string.escape"] = {
    fg = "#af87ff"
  },
  ["@string.regexp"] = {
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
  ["@type"] = {
    fg = "#62d8f1"
  },
  ["@type.builtin"] = {
    fg = "#62d8f1",
    italic = true
  },
  ["@type.definition"] = {
    link = "Typedef"
  },
  ["@type.qualifier"] = {
    link = "@keyword"
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
  ["@variable.member"] = {
    fg = "#ffffff"
  },
  ["@variable.parameter"] = {
    fg = "#ff9700",
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
    fg = "#3e3e3e"
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
    fg = "#ffffff"
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
    fg = "#af87ff"
  },
  BufferLineIndicatorSelected = {
    fg = "#ff9700"
  },
  Character = {
    fg = "#af87ff"
  },
  CmpDocumentation = {
    bg = "#262626",
    fg = "#ffffff"
  },
  CmpDocumentationBorder = {
    bg = "#262626",
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
    fg = "#8a8a8a"
  },
  CodeBlock = {
    bg = "#1e1e1e"
  },
  ColorColumn = {
    bg = "#2f2f2f"
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
    fg = "#2b2b2b"
  },
  CursorColumn = {
    bg = "#404040"
  },
  CursorIM = {
    bg = "#62d8f1",
    fg = "#2b2b2b"
  },
  CursorLine = {
    bg = "#404040"
  },
  CursorLineNr = {
    fg = "#ffff87"
  },
  Dash = {
    bold = true,
    fg = "#ff9700"
  },
  DashboardDesc = {
    fg = "#fc1a70"
  },
  DashboardFiles = {
    fg = "#bcbcbc"
  },
  DashboardFooter = {
    fg = "#8a8a8a",
    italic = true
  },
  DashboardHeader = {
    fg = "#ff9700"
  },
  DashboardIcon = {
    fg = "#ffffff"
  },
  DashboardKey = {
    fg = "#af87ff"
  },
  DashboardMruIcon = {
    fg = "#ffffff"
  },
  DashboardMruTitle = {
    bold = true,
    fg = "#fc1a70"
  },
  DashboardProjectIcon = {
    fg = "#62d8f1"
  },
  DashboardProjectTitle = {
    bold = true,
    fg = "#fc1a70"
  },
  DashboardProjectTitleIcon = {
    fg = "#ffffff"
  },
  DashboardShortCut = {
    fg = "#af87ff"
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
    bg = "#3c282f",
    fg = "#ff005f"
  },
  DiagnosticVirtualTextHint = {
    bg = "#323931",
    fg = "#83dc78"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#28323c",
    fg = "#0087ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#3c3428",
    fg = "#ff9700"
  },
  DiagnosticWarn = {
    fg = "#ff9700"
  },
  DiffAdd = {
    bg = "#3d4725",
    fg = "#a4e400"
  },
  DiffChange = {
    bg = "#25394b"
  },
  DiffDelete = {
    bg = "#4b2533",
    fg = "#fc1a70"
  },
  DiffText = {
    bg = "#165995"
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
    bg = "#262626",
    fg = "#ffffff"
  },
  FloatTitle = {
    bg = "#262626",
    fg = "#ffffff"
  },
  FoldColumn = {
    bg = "#262626",
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
    sp = "#83dc78",
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
    bg = "#444444",
    fg = "#0087ff",
    italic = true
  },
  GitSignsDelete = {
    link = "diffRemoved"
  },
  GitSignsDeleteInline = {
    bg = "#fc1a70",
    fg = "#4b2533"
  },
  Headline = {
    link = "Headline1"
  },
  Headline1 = {
    bg = "#444444",
    bold = true
  },
  Headline2 = {
    bg = "#444444",
    bold = true
  },
  Headline3 = {
    bg = "#444444",
    bold = true
  },
  Headline4 = {
    bg = "#444444",
    bold = true
  },
  Headline5 = {
    bg = "#444444",
    bold = true
  },
  Headline6 = {
    bg = "#444444",
    bold = true
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
    bold = true,
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
  KindConceal = {
    fg = "#0087ff"
  },
  KindParameter = {
    fg = "#ff9700"
  },
  KindText = {
    fg = "#ffffff"
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
  LazyReasonCmd = {
    fg = "#62d8f1"
  },
  LazyReasonEvent = {
    fg = "#ff9700"
  },
  LazyReasonSource = {
    fg = "#ffff87"
  },
  LineNr = {
    fg = "#3e3e3e"
  },
  LineNrBe = {
    fg = "#a4e400"
  },
  LspInfoBorder = {
    bg = "#262626",
    fg = "#ffffff"
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
  MiniIndentscopeSymbol = {
    fg = "#aa6c11",
    nocombine = true
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
    fg = "#ffffff"
  },
  NavicText = {
    bg = "NONE",
    fg = "#ffffff"
  },
  NeoTreeDimText = {
    fg = "#3e3e3e"
  },
  NeoTreeDirectoryIcon = {
    fg = "#62d8f1"
  },
  NeoTreeDirectoryName = {
    fg = "#ffffff"
  },
  NeoTreeFileNameOpened = {
    fg = "#ff9700"
  },
  NeoTreeGitAdded = {
    fg = "#a4e400"
  },
  NeoTreeGitDeleted = {
    fg = "#fc1a70"
  },
  NeoTreeGitModified = {
    fg = "#ff9700"
  },
  NeoTreeIndentMarkder = {
    fg = "#3e3e3e"
  },
  NeoTreeNormal = {
    bg = "#262626",
    fg = "#e8e8e8"
  },
  NeoTreeNormalNC = {
    bg = "#262626",
    fg = "#e8e8e8"
  },
  NeoTreeRootName = {
    fg = "#fc1a70",
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
    bg = "#ff9700",
    bold = true,
    fg = "#ffffff"
  },
  NoiceLspProgressSpinner = {
    fg = "#a4e400"
  },
  NoiceLspProgressTitle = {
    fg = "#ff9700",
    italic = true
  },
  NoiceMini = {
    bg = "#262626"
  },
  NonText = {
    fg = "#444444"
  },
  Normal = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  NormalFloat = {
    bg = "#262626",
    fg = "#ffffff"
  },
  NormalNC = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  NormalSB = {
    bg = "#262626",
    fg = "#e8e8e8"
  },
  NotifyBackground = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  NotifyDEBUGBody = {
    link = "Normal"
  },
  NotifyDEBUGBorder = {
    bg = "#2b2b2b",
    fg = "#484848"
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
    bg = "#2b2b2b",
    fg = "#6b1e3b"
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
    bg = "#2b2b2b",
    fg = "#1e476b"
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
    bg = "#2b2b2b",
    fg = "#53476b"
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
    bg = "#2b2b2b",
    fg = "#6b4b1e"
  },
  NotifyWARNIcon = {
    fg = "#ff9700"
  },
  NotifyWARNTitle = {
    fg = "#ff9700"
  },
  NvimInternalError = {
    bg = "#ff0000",
    fg = "#ffffff"
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
    bg = "#262626",
    fg = "#e8e8e8"
  },
  NvimTreeNormalNC = {
    bg = "#262626",
    fg = "#e8e8e8"
  },
  NvimTreeOpenedFile = {
    bg = "#404040"
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
    bg = "#262626",
    fg = "#262626"
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
    bg = "#3a3a3a",
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
  Quote = {
    bg = "#3e3e3e",
    fg = "#2b2b2b"
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
    bg = "#2b2b2b",
    fg = "#3e3e3e"
  },
  SignColumnSB = {
    bg = "#262626",
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
    bg = "#2b2b2b"
  },
  Tag = {
    fg = "#af87ff"
  },
  TelescopeBorder = {
    bg = "#262626",
    fg = "#ffffff"
  },
  TelescopeNormal = {
    bg = "#262626",
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
    fg = "#1e1e1e"
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
    bg = "#262626"
  },
  TreesitterContextBottom = {
    sp = "#62d8f1",
    underline = true
  },
  TreesitterContextLineNumber = {
    bg = "#262626",
    fg = "#585858"
  },
  TreesitterContextLineNumberBottom = {
    fg = "#ffff87",
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
    fg = "#ff9700"
  },
  WhichKey = {
    fg = "#ffff87"
  },
  WhichKeyBorder = {
    bg = "#262626"
  },
  WhichKeyDesc = {
    fg = "#ffffff"
  },
  WhichKeyFloat = {
    bg = "#262626"
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
  WinBar = {
    link = "StatusLine"
  },
  WinBarNC = {
    link = "StatusLineNC"
  },
  WinSeparator = {
    fg = "#62d8f1"
  },
  debugBreakpoint = {
    bg = "#273440",
    fg = "#0087ff"
  },
  debugPC = {
    bg = "#262626"
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
    bg = "#262626",
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
    fg = "#2b2b2b"
  },
  netrwClassify = {
    fg = "#fc1a70"
  },
  netrwCmdNote = {
    fg = "#e8e8e8"
  },
  netrwDir = {
    fg = "#ffff87"
  },
  netrwExe = {
    fg = "#ff9700"
  },
  netrwHelpCmd = {
    bold = true,
    fg = "#ff9700"
  },
  netrwLink = {
    fg = "#fc1a70"
  },
  netrwList = {
    fg = "#ffff87"
  },
  netrwMarkFile = {
    bg = "#ff9700",
    bold = true,
    fg = "#000001"
  },
  netrwPlain = {
    fg = "#e8e8e8"
  },
  netrwQuickHelp = {
    fg = "#e8e8e8",
    italic = true
  },
  netrwSymLink = {
    fg = "#62d8f1",
    italic = true
  },
  netrwTreeBar = {
    fg = "#3e3e3e",
    nocombine = true
  },
  netrwVersion = {
    fg = "#ff9700",
    italic = true
  },
  qfFileName = {
    fg = "#af87ff"
  },
  qfLineNr = {
    fg = "#8a8a8a"
  }
}