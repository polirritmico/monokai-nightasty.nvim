-- ColorScheme: Monokai NighTasty Light

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
    text = "#b3dbff"
  },
  error = "#ff005f",
  fg = "#333333",
  fg_dark = "#0e0e0e",
  fg_float = "#333333",
  fg_gutter = "#c9c9c9",
  fg_search = "#ffffff",
  fg_sidebar = "#0e0e0e",
  fg_statusline = "#0e0e0e",
  git = {
    add = "#4fb000",
    change = "#ff4d00",
    delete = "#ff004b"
  },
  green = "#4fb000",
  green_alt = "#4fb000",
  green_light = "#7ebd00",
  grey = "#7f7f7f",
  grey_dark = "#b2b2b2",
  grey_darker = "#bfbfbf",
  grey_darker_alt = "#c9c9c9",
  grey_light = "#4c4c4c",
  grey_lighter = "#171717",
  grey_medium = "#a5a5a5",
  hint = "#4fb000",
  info = "#0087ff",
  lualine = {
    command_fg = "#a4e400",
    normal_bg = "#7ebd00",
    normal_fg = "#ffffff"
  },
  magenta = "#ff004b",
  none = "NONE",
  note = "#ff6700",
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
  ["@annotation"] = "PreProc",
  ["@attribute"] = "PreProc",
  ["@attribute.builtin"] = {
    fg = "#ff004b",
    italic = true
  },
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#ff004b"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    fg = "#4fb000"
  },
  ["@function.builtin.bash"] = {
    fg = "#00b3e3"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "Function",
  ["@keyword"] = {
    fg = "#ff004b",
    italic = false
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.conditional.htmldjango"] = {
    fg = "#ff4d00"
  },
  ["@keyword.conditional.ternary"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = {
    fg = "#a2a2a2",
    nocombine = true
  },
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#00b3e3",
    italic = true
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "Operator",
  ["@keyword.operator.htmldjango"] = "@keyword.conditional.htmldjango",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.repeat.htmldjango"] = "@keyword.conditional.htmldjango",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@lsp.type.boolean"] = "Boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.class.markdown"] = {
    fg = "#ff8f00"
  },
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = {
    fg = "#14809d"
  },
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@storageclass",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "Operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = {
    sp = "#ff005f",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "Operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#0087ff"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#0087ff"
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.global.lua"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1"] = "Title",
  ["@markup.heading.1.marker"] = "@tag",
  ["@markup.heading.2"] = "Title",
  ["@markup.heading.2.marker"] = "@tag",
  ["@markup.heading.3"] = "Title",
  ["@markup.heading.3.marker"] = "@tag",
  ["@markup.heading.4"] = "Title",
  ["@markup.heading.4.marker"] = "@tag",
  ["@markup.heading.5"] = "Title",
  ["@markup.heading.5.marker"] = "@tag",
  ["@markup.heading.6"] = "Title",
  ["@markup.heading.6.marker"] = "@tag",
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
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = {
    fg = "#ff4d00"
  },
  ["@markup.list"] = {
    fg = "#ff004b"
  },
  ["@markup.list.checked"] = "@markup.list",
  ["@markup.list.unchecked"] = "@markup.list",
  ["@markup.math"] = "Special",
  ["@markup.quote"] = {
    bg = "#e3e3e3",
    fg = "#333333",
    italic = true
  },
  ["@markup.raw"] = "String",
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
    fg = "#00b3e3"
  },
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = "Operator",
  ["@property"] = {
    fg = "#0e0e0e"
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
  ["@punctuation.special"] = "Delimiter",
  ["@string"] = "String",
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
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@type.qualifier.c_sharp"] = {
    fg = "#ff4d00",
    italic = true
  },
  ["@variable"] = {
    fg = "#333333"
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
  ALEError = "SpellBad",
  ALEErrorSign = "DiagnosticError",
  ALEInfo = "SpellLocal",
  ALEInfoSign = "DiagnosticInfo",
  ALEStyleError = "ALEError",
  ALEStyleErrorSign = "ALEErrorSign",
  ALEStyleWarning = "ALEWarning",
  ALEStyleWarningSign = "ALEWarningSign",
  ALEVirtualTextError = "DiagnosticVirtualTextError",
  ALEVirtualTextInfo = "DiagnosticVirtualTextInfo",
  ALEVirtualTextStyleError = "ALEVirtualTextError",
  ALEVirtualTextStyleWarning = "ALEVirtualTextWarning",
  ALEVirtualTextWarning = "DiagnosticVirtualTextWarn",
  ALEWarning = "SpellCap",
  ALEWarningSign = "DiagnosticWarn",
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#c9c9c9"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#333333"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#ff004b"
  },
  AlphaFooter = {
    fg = "#7f7f7f",
    italic = true
  },
  AlphaHeader = {
    fg = "#ff4d00"
  },
  AlphaHeaderLabel = {
    fg = "#ff004b"
  },
  AlphaShortcut = {
    fg = "#6054d0"
  },
  BlinkCmpGhostText = {
    bg = "NONE",
    fg = "#a5a5a5"
  },
  BlinkCmpKind = {
    bg = "NONE",
    fg = "#4fb000"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindEnum = "LspKindEnum",
  BlinkCmpKindEnumMember = "LspKindEnumMember",
  BlinkCmpKindEvent = "LspKindEvent",
  BlinkCmpKindField = "LspKindField",
  BlinkCmpKindFile = "LspKindFile",
  BlinkCmpKindFolder = "LspKindFolder",
  BlinkCmpKindFunction = "LspKindFunction",
  BlinkCmpKindInterface = "LspKindInterface",
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = "LspKindKeyword",
  BlinkCmpKindMethod = "LspKindMethod",
  BlinkCmpKindModule = "LspKindModule",
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = "LspKindOperator",
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = "LspKindProperty",
  BlinkCmpKindReference = "LspKindReference",
  BlinkCmpKindSnippet = "LspKindSnippet",
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = "LspKindStruct",
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#4c4c4c"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#7f7f7f",
    strikethrough = true
  },
  BlinkCmpLabelDescription = "BlinkCmpLabelDetail",
  BlinkCmpLabelDetail = {
    fg = "#7f7f7f",
    italic = true
  },
  BlinkCmpLabelMatch = {
    fg = "#ff004b"
  },
  BlinkCmpMenu = {
    bg = "#e3e3e3",
    fg = "#7f7f7f"
  },
  BlinkCmpMenuBorder = {
    bg = "#e3e3e3",
    fg = "#4c4c4c"
  },
  BlinkCmpMenuSelection = {
    bg = "#f1f1f1"
  },
  BlinkCmpSource = {
    bg = "NONE",
    fg = "#7f7f7f"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#6054d0"
  },
  BufferAlternate = {
    bg = "#e3e3e3",
    fg = "#4c4c4c",
    italic = true
  },
  BufferAlternateADDED = {
    bg = "#e3e3e3",
    fg = "#72c033"
  },
  BufferAlternateBtn = {
    bg = "#e3e3e3",
    fg = "#4c4c4c"
  },
  BufferAlternateCHANGED = {
    bg = "#e3e3e3",
    fg = "#ff7133"
  },
  BufferAlternateDELETED = {
    bg = "#e3e3e3",
    fg = "#ff336f"
  },
  BufferAlternateERROR = {
    bg = "#e3e3e3",
    fg = "#ff337f"
  },
  BufferAlternateHINT = {
    bg = "#e3e3e3",
    fg = "#72c033"
  },
  BufferAlternateINFO = {
    bg = "#e3e3e3",
    fg = "#339fff"
  },
  BufferAlternateMod = "BufferAlternateBtn",
  BufferAlternateNumber = "BufferAlternateBtn",
  BufferAlternateSign = {
    bg = "#e3e3e3",
    fg = "#6054d0"
  },
  BufferAlternateSignRight = {
    bg = "#e3e3e3",
    fg = "#6054d0"
  },
  BufferAlternateTarget = "BufferCurrentTarget",
  BufferAlternateWARN = {
    bg = "#e3e3e3",
    fg = "#ff7133"
  },
  BufferCurrent = {
    bg = "#ebebeb",
    bold = true,
    fg = "#333333",
    italic = true
  },
  BufferCurrentADDED = {
    bg = "#ebebeb",
    fg = "#4fb000"
  },
  BufferCurrentBtn = {
    bg = "#ebebeb",
    fg = "#ff004b"
  },
  BufferCurrentCHANGED = {
    bg = "#ebebeb",
    fg = "#ff4d00"
  },
  BufferCurrentDELETED = {
    bg = "#ebebeb",
    fg = "#ff004b"
  },
  BufferCurrentERROR = {
    bg = "#ebebeb",
    fg = "#ff005f"
  },
  BufferCurrentHINT = {
    bg = "#ebebeb",
    fg = "#4fb000"
  },
  BufferCurrentINFO = {
    bg = "#ebebeb",
    fg = "#0087ff"
  },
  BufferCurrentMod = {
    bg = "#ebebeb",
    fg = "#ff4d00"
  },
  BufferCurrentNumber = {
    bg = "#ebebeb",
    fg = "#4c4c4c"
  },
  BufferCurrentPin = "BufferCurrentMod",
  BufferCurrentSign = {
    bg = "#ebebeb",
    fg = "#00b3e3"
  },
  BufferCurrentSignRight = "BufferCurrentSign",
  BufferCurrentTarget = {
    bg = "#ff4d00",
    bold = true,
    fg = "#000001"
  },
  BufferCurrentWARN = {
    bg = "#ebebeb",
    fg = "#ff4d00"
  },
  BufferInactive = {
    bg = "#f1f1f1",
    fg = "#999999"
  },
  BufferInactiveADDED = {
    bg = "#f1f1f1",
    fg = "#72c033"
  },
  BufferInactiveBtn = "BufferInactive",
  BufferInactiveCHANGED = {
    bg = "#f1f1f1",
    fg = "#ff7133"
  },
  BufferInactiveDELETED = {
    bg = "#f1f1f1",
    fg = "#ff336f"
  },
  BufferInactiveERROR = {
    bg = "#f1f1f1",
    fg = "#ff337f"
  },
  BufferInactiveHINT = {
    bg = "#f1f1f1",
    fg = "#72c033"
  },
  BufferInactiveINFO = {
    bg = "#f1f1f1",
    fg = "#339fff"
  },
  BufferInactiveMod = "BufferInactiveBtn",
  BufferInactiveNumber = "BufferInactive",
  BufferInactivePin = {
    bg = "#f1f1f1",
    fg = "#ff7133"
  },
  BufferInactiveSign = {
    bg = "#f1f1f1",
    fg = "#a5a5a5"
  },
  BufferInactiveSignRight = "BufferInactiveSign",
  BufferInactiveTarget = "BufferCurrentTarget",
  BufferInactiveWARN = {
    bg = "#f1f1f1",
    fg = "#ff7133"
  },
  BufferLineIndicatorSelected = {
    fg = "#ff4d00"
  },
  BufferOffset = {
    bg = "#ebebeb",
    fg = "#4c4c4c"
  },
  BufferTabpageFill = {
    bg = "#f1f1f1",
    fg = "#7f7f7f"
  },
  BufferTabpages = {
    bg = "#e3e3e3",
    fg = "#0e0e0e"
  },
  BufferTabpagesSep = {
    bg = "#e3e3e3",
    fg = "#ff004b"
  },
  BufferVisible = {
    bg = "#e3e3e3",
    fg = "#999999",
    italic = true
  },
  BufferVisibleADDED = {
    bg = "#e3e3e3",
    fg = "#72c033"
  },
  BufferVisibleBtn = {
    bg = "#e3e3e3",
    fg = "#999999"
  },
  BufferVisibleCHANGED = {
    bg = "#e3e3e3",
    fg = "#ff7133"
  },
  BufferVisibleDELETED = {
    bg = "#e3e3e3",
    fg = "#ff336f"
  },
  BufferVisibleERROR = {
    bg = "#e3e3e3",
    fg = "#ff337f"
  },
  BufferVisibleHINT = {
    bg = "#e3e3e3",
    fg = "#72c033"
  },
  BufferVisibleINFO = {
    bg = "#e3e3e3",
    fg = "#339fff"
  },
  BufferVisibleMod = "BufferVisibleBtn",
  BufferVisibleNumber = "BufferVisibleBtn",
  BufferVisibleSign = {
    bg = "#e3e3e3",
    fg = "#00b3e3"
  },
  BufferVisibleSignRight = "BufferVisibleSign",
  BufferVisibleTarget = "BufferCurrentTarget",
  BufferVisibleWARN = {
    bg = "#e3e3e3",
    fg = "#ff7133"
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
    bg = "NONE",
    fg = "#a5a5a5",
    italic = true
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#333333"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
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
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#7f7f7f"
  },
  CodeActionText = "Identifier",
  CodeBlock = {
    bg = "#e1e1e1"
  },
  ColorColumn = {
    bg = "#fbfbfb"
  },
  Comment = {
    fg = "#7f7f7f",
    italic = true
  },
  Conceal = {
    fg = "#4c4c4c"
  },
  Conditional = {
    fg = "#ff004b"
  },
  Constant = {
    fg = "#6054d0"
  },
  CurSearch = "IncSearch",
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
  DapUIBreakpointsCurrentLine = {
    bold = true,
    fg = "#4fb000"
  },
  DapUIBreakpointsDisabledLine = {
    fg = "#7f7f7f"
  },
  DapUIBreakpointsInfo = {
    fg = "#4fb000"
  },
  DapUIBreakpointsPath = {
    fg = "#00b3e3"
  },
  DapUIDecoration = {
    fg = "#ff004b"
  },
  DapUIFloatBorder = "DapUIBreakpointsPath",
  DapUILineNumber = {
    fg = "#ff8f00"
  },
  DapUIModifiedValue = {
    bold = true,
    fg = "#00b3e3"
  },
  DapUINormal = "Normal",
  DapUIPlayPause = {
    fg = "#4fb000"
  },
  DapUIPlayPauseNC = "DapUIPlayPause",
  DapUIRestart = "DapUIPlayPause",
  DapUIScope = "DapUIBreakpointsPath",
  DapUISource = {
    fg = "#ff4d00"
  },
  DapUIStepBack = {
    fg = "#00b3e3"
  },
  DapUIStepBackNC = "DapUIStepBack",
  DapUIStepInto = "DapUIStepBack",
  DapUIStepIntoNC = "DapUIStepBack",
  DapUIStepOut = "DapUIStepBack",
  DapUIStepOutNC = "DapUIStepBack",
  DapUIStepOver = "DapUIStepBack",
  DapUIStepOverNC = "DapUIStepBack",
  DapUIStop = {
    fg = "#ff005f"
  },
  DapUIStopNC = "DapUIStop",
  DapUIStoppedThread = "DapUIBreakpointsPath",
  DapUIThread = "DapUIBreakpointsInfo",
  DapUIType = {
    fg = "#6054d0"
  },
  DapUIUnavailable = {
    fg = "#7f7f7f"
  },
  DapUIUnavailableNC = "DapUIUnavailable",
  DapUIValue = {
    bg = "NONE",
    fg = "#4c4c4c"
  },
  DapUIVariable = {
    bg = "NONE",
    fg = "#333333"
  },
  DapUIWatchesEmpty = "DapUIDecoration",
  DapUIWatchesError = "DapUIDecoration",
  DapUIWatchesValue = "DapUIThread",
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
  DashboardMruIcon = "DashboardIcon",
  DashboardMruTitle = {
    bold = true,
    fg = "#ff004b"
  },
  DashboardProjectIcon = {
    fg = "#00b3e3"
  },
  DashboardProjectTitle = "DashboardIcon",
  DashboardProjectTitleIcon = "DashboardIcon",
  DashboardShortCut = "DashboardKey",
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
    italic = true,
    sp = "#4c4c4c",
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
    bg = "#b3dbff"
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
  FlashBackdrop = {
    fg = "#a5a5a5"
  },
  FlashCurrent = {
    bg = "#000001",
    bold = true,
    fg = "#ff8f00"
  },
  FlashLabel = {
    bg = "#ff004b",
    fg = "#000001"
  },
  FlashMatch = {
    bg = "#ff004b",
    fg = "#333333"
  },
  FlashPromptIcon = {
    fg = "#ff4d00"
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
    bg = "#e3e3e3",
    fg = "#00b3e3",
    italic = true
  },
  Function = {
    fg = "#4fb000"
  },
  FzfLuaBorder = "FloatBorder",
  FzfLuaBufFlagAlt = {
    fg = "#00b3e3"
  },
  FzfLuaBufFlagCur = {
    fg = "#ff004b"
  },
  FzfLuaBufName = {
    fg = "#0087ff"
  },
  FzfLuaBufNr = {
    fg = "#4c4c4c"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaCursorLine = "CursorLine",
  FzfLuaDirPart = {
    fg = "#7f7f7f"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = {
    bg = "#bfbfbf",
    fg = "#333333"
  },
  FzfLuaFzfGutter = {
    bg = "#bfbfbf"
  },
  FzfLuaFzfInfo = {
    fg = "#0e0e0e"
  },
  FzfLuaFzfNormal = {
    bg = "#e3e3e3",
    fg = "#4c4c4c"
  },
  FzfLuaFzfPointer = {
    fg = "#ff004b"
  },
  FzfLuaFzfPrompt = {
    fg = "#0087ff"
  },
  FzfLuaFzfQuery = {
    fg = "#4c4c4c"
  },
  FzfLuaFzfScrollbar = "PmenuSbar",
  FzfLuaFzfSeparator = {
    fg = "#c9c9c9"
  },
  FzfLuaFzfSpinner = {
    fg = "#4fb000"
  },
  FzfLuaHeaderBind = {
    fg = "#6054d0"
  },
  FzfLuaHeaderText = {
    fg = "#ff4d00",
    italic = true
  },
  FzfLuaLiveSym = "Special",
  FzfLuaNormal = {
    bg = "#e3e3e3",
    fg = "#0e0e0e"
  },
  FzfLuaPathColNr = {
    fg = "#00b3e3"
  },
  FzfLuaPathLineNr = {
    fg = "#6054d0"
  },
  FzfLuaTabMarker = {
    fg = "#4fb000"
  },
  FzfLuaTabTitle = {
    bold = true,
    fg = "#ff4d00"
  },
  GitGutterAdd = {
    fg = "#4fb000"
  },
  GitGutterAddLineNr = {
    fg = "#4fb000"
  },
  GitGutterChange = {
    fg = "#ff4d00"
  },
  GitGutterChangeLineNr = {
    fg = "#ff4d00"
  },
  GitGutterDelete = {
    fg = "#ff004b"
  },
  GitGutterDeleteLineNr = {
    fg = "#ff004b"
  },
  GitSignsAdd = "diffAdded",
  GitSignsAddInline = {
    sp = "#4fb000",
    undercurl = true
  },
  GitSignsChange = "diffChanged",
  GitSignsChangeInline = {
    sp = "#0087ff",
    undercurl = true
  },
  GitSignsCurrentLineBlame = {
    bg = "#dedede",
    fg = "#0087ff",
    italic = true
  },
  GitSignsDelete = "diffRemoved",
  GitSignsDeleteInline = {
    bg = "#ff004b",
    fg = "#ffd9e7"
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
  IblIndent = {
    fg = "#c9c9c9",
    nocombine = true
  },
  IblScope = {
    fg = "#ff9466",
    nocombine = true
  },
  IblWhitespace = {
    fg = "#0e0e0e",
    nocombine = true
  },
  Identifier = {
    fg = "#333333"
  },
  IncSearch = {
    bg = "#6054d0",
    bold = true,
    fg = "#ffffff"
  },
  Include = {
    fg = "#ff004b"
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#ff004b",
    italic = false
  },
  Label = {
    fg = "#ff8f00"
  },
  LazyCommitScope = {
    fg = "#ff4d00",
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#ff004b"
  },
  LazyProgressDone = "LazyCommitType",
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
  LeapBackgrop = {
    fg = "#a5a5a5"
  },
  LeapLabel = {
    bg = "#ff004b",
    bold = true,
    fg = "#000001"
  },
  LeapMatch = {
    bg = "#ff004b",
    bold = true,
    fg = "#333333"
  },
  LineNr = {
    fg = "#b2b2b2"
  },
  LineNrBe = {
    fg = "#4fb000"
  },
  LspCodeLens = {
    bg = "#f7f6fd",
    fg = "#887fdc",
    italic = true
  },
  LspCodeLensSeparator = {
    bg = "#f7f6fd",
    fg = "#6054d0",
    italic = true
  },
  LspInfoBorder = {
    bg = "#e3e3e3",
    fg = "#333333"
  },
  LspInlayHint = {
    fg = "#7f7f7f",
    italic = true
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "Boolean",
  LspKindClass = "@type.builtin",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "Special",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "Operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link.url",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "Structure",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.parameter",
  LspKindUnit = "Structure",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = "LspReferenceText",
  LspReferenceText = {
    bg = "#c9c9c9"
  },
  LspReferenceWrite = "LspReferenceText",
  LspSignatureActiveParameter = {
    bg = "#e3e3e3",
    bold = true
  },
  Macro = {
    fg = "#ff004b"
  },
  MatchParen = {
    bold = true,
    fg = "#ff004b",
    underline = true
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#4fb000"
  },
  MiniDiffSignChange = {
    fg = "#ff4d00"
  },
  MiniDiffSignDelete = {
    fg = "#ff004b"
  },
  MiniHipatternsFixme = {
    bg = "#ff004b",
    bold = true,
    fg = "#ffffff"
  },
  MiniHipatternsHack = {
    bg = "#ff4d00",
    bold = true,
    fg = "#000001"
  },
  MiniHipatternsNote = {
    bg = "#0087ff",
    bold = true,
    fg = "#000001"
  },
  MiniHipatternsTodo = {
    bg = "#4fb000",
    bold = true,
    fg = "#000001"
  },
  MiniIconsAzure = {
    fg = "#0087ff"
  },
  MiniIconsBlue = {
    fg = "#0087ff"
  },
  MiniIconsCyan = {
    fg = "#00b3e3"
  },
  MiniIconsGreen = {
    fg = "#4fb000"
  },
  MiniIconsGrey = {
    fg = "#4c4c4c"
  },
  MiniIconsOrange = {
    fg = "#ff4d00"
  },
  MiniIconsPurple = {
    fg = "#6054d0"
  },
  MiniIconsRed = {
    fg = "#ff004b"
  },
  MiniIconsYellow = {
    fg = "#ff8f00"
  },
  MiniIndentscopeSymbol = {
    fg = "#ff9466",
    nocombine = true
  },
  MiniStatuslineDevinfo = {
    bg = "#e3e3e3",
    fg = "#4fb000"
  },
  MiniStatuslineFileinfo = {
    bg = "#e3e3e3",
    fg = "#4fb000"
  },
  MiniStatuslineFilename = {
    bg = "#f1f1f1",
    fg = "#0e0e0e"
  },
  MiniStatuslineInactive = {
    bg = "#e3e3e3",
    bold = true,
    fg = "#c9c9c9"
  },
  MiniStatuslineModeCommand = {
    bg = "#000001",
    bold = true,
    fg = "#4fb000"
  },
  MiniStatuslineModeInsert = {
    bg = "#f6f557",
    bold = true,
    fg = "#000001"
  },
  MiniStatuslineModeNormal = {
    bg = "#7ebd00",
    bold = true,
    fg = "#ffffff"
  },
  MiniStatuslineModeOther = {
    bg = "#000001",
    bold = true,
    fg = "#0087ff"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff005f",
    bold = true,
    fg = "#000001"
  },
  MiniStatuslineModeVisual = {
    bg = "#6054d0",
    bold = true,
    fg = "#000001"
  },
  ModeMsg = {
    bold = true,
    fg = "#0e0e0e"
  },
  MoreMsg = {
    fg = "#4fb000"
  },
  MsgArea = {
    fg = "#0e0e0e"
  },
  MsgSeparator = {
    sp = "#00b3e3",
    underline = true
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
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
    fg = "#0e0e0e"
  },
  NeoTreeNormalNC = "NeoTreeNormal",
  NeoTreeRootName = {
    fg = "#ff004b",
    italic = true
  },
  NeoTreeWinSeparator = {
    bg = "#f1f1f1",
    fg = "#f1f1f1"
  },
  NeogitBranch = {
    fg = "#4fb000"
  },
  NeogitBranchHead = {
    fg = "#00b3e3"
  },
  NeogitChangeAdded = {
    fg = "#00b3e3",
    italic = true
  },
  NeogitChangeCopied = {
    fg = "#6054d0",
    italic = true
  },
  NeogitChangeDeleted = {
    fg = "#ff004b",
    italic = true
  },
  NeogitChangeModified = {
    fg = "#4fb000",
    italic = true
  },
  NeogitChangeNewFile = {
    fg = "#0087ff",
    italic = true
  },
  NeogitChangeRenamed = {
    fg = "#ff4d00",
    italic = true
  },
  NeogitChangeUpdated = {
    fg = "#ff8f00",
    italic = true
  },
  NeogitCommandCodeNormal = {
    fg = "#4fb000"
  },
  NeogitCommandText = {
    fg = "#ff4d00"
  },
  NeogitCommandTime = "NeogitTagDistance",
  NeogitCommitViewDescription = {
    fg = "#ff4d00"
  },
  NeogitCommitViewHeader = {
    bg = "#e3e3e3",
    fg = "#6054d0"
  },
  NeogitDiffAdd = {
    bg = "#f2f9ec",
    fg = "#84c84d"
  },
  NeogitDiffAddCursor = {
    bg = "#ebebeb"
  },
  NeogitDiffAddHighlight = "DiffAdd",
  NeogitDiffAdditions = {
    fg = "#4fb000"
  },
  NeogitDiffContext = {
    bg = "#e3e3e3",
    fg = "#4c4c4c"
  },
  NeogitDiffContextCursor = "NeogitDiffAddCursor",
  NeogitDiffContextHighlight = {
    bg = "#e3e3e3",
    fg = "#333333"
  },
  NeogitDiffDelete = {
    bg = "#ffecf3",
    fg = "#ff4d81"
  },
  NeogitDiffDeleteCursor = "NeogitDiffAddCursor",
  NeogitDiffDeleteHighlight = "DiffDelete",
  NeogitDiffDeletions = {
    fg = "#ff004b"
  },
  NeogitDiffHeader = "NeogitBranchHead",
  NeogitDiffHeaderCursor = "NeogitDiffAddCursor",
  NeogitFilePath = {
    fg = "#0087ff"
  },
  NeogitFloatHeader = {
    bg = "#e3e3e3",
    bold = true,
    fg = "#0087ff"
  },
  NeogitFloatHeaderHighlight = {
    bg = "#0087ff",
    bold = true,
    fg = "#e3e3e3"
  },
  NeogitGraphAuthor = {
    fg = "#ff004b"
  },
  NeogitGraphBlack = {
    fg = "#000001"
  },
  NeogitGraphBlue = {
    fg = "#0087ff"
  },
  NeogitGraphBoldBlack = {
    bold = true,
    fg = "#000001"
  },
  NeogitGraphBoldBlue = {
    bold = true,
    fg = "#0087ff"
  },
  NeogitGraphBoldCyan = {
    bold = true,
    fg = "#00b3e3"
  },
  NeogitGraphBoldGray = {
    bold = true,
    fg = "#7f7f7f"
  },
  NeogitGraphBoldGreen = {
    bold = true,
    fg = "#4fb000"
  },
  NeogitGraphBoldOrange = {
    bold = true,
    fg = "#ff4d00"
  },
  NeogitGraphBoldPurple = {
    bold = true,
    fg = "#6054d0"
  },
  NeogitGraphBoldRed = {
    bold = true,
    fg = "#ff005f"
  },
  NeogitGraphBoldWhite = {
    bold = true,
    fg = "#ffffff"
  },
  NeogitGraphBoldYellow = {
    bold = true,
    fg = "#ff8f00"
  },
  NeogitGraphCyan = {
    fg = "#00b3e3"
  },
  NeogitGraphGray = {
    fg = "#7f7f7f"
  },
  NeogitGraphGreen = {
    fg = "#4fb000"
  },
  NeogitGraphOrange = {
    fg = "#ff4d00"
  },
  NeogitGraphPurple = {
    fg = "#6054d0"
  },
  NeogitGraphRed = {
    fg = "#ff005f"
  },
  NeogitGraphWhite = {
    fg = "#ffffff"
  },
  NeogitGraphYellow = {
    fg = "#ff8f00"
  },
  NeogitHunkHeader = {
    bold = true,
    fg = "#4dcaeb"
  },
  NeogitHunkHeaderCursor = "NeogitDiffAddCursor",
  NeogitHunkHeaderHighlight = {
    bg = "#d8d8d8",
    bold = true,
    fg = "#00b3e3"
  },
  NeogitObjectId = {
    fg = "#4c4c4c",
    italic = true
  },
  NeogitPopupActionDisabled = {
    fg = "#7f7f7f",
    italic = true
  },
  NeogitPopupActionKey = {
    fg = "#ff8f00"
  },
  NeogitPopupBranchName = {
    fg = "#ff004b"
  },
  NeogitPopupConfigDisabled = "NeogitPopupActionDisabled",
  NeogitPopupConfigEnabled = {
    fg = "#ff4d00",
    italic = true
  },
  NeogitPopupConfigKey = "NeogitPopupActionKey",
  NeogitPopupOptionDisabled = "NeogitPopupActionDisabled",
  NeogitPopupOptionEnabled = "NeogitPopupConfigEnabled",
  NeogitPopupOptionKey = "NeogitPopupActionKey",
  NeogitPopupSectionTitle = {
    fg = "#4fb000"
  },
  NeogitPopupSwitchDisabled = "NeogitPopupActionDisabled",
  NeogitPopupSwitchEnabled = "NeogitPopupConfigEnabled",
  NeogitPopupSwitchKey = "NeogitPopupActionKey",
  NeogitRemote = {
    fg = "#6054d0"
  },
  NeogitSectionHeader = {
    fg = "#ff004b"
  },
  NeogitSectionHeaderCount = {
    fg = "#4c4c4c"
  },
  NeogitSignatureBad = {
    bg = "#ff005f",
    fg = "#ffffff"
  },
  NeogitSignatureGood = {
    bg = "#ffffff",
    fg = "#4fb000"
  },
  NeogitSignatureMissing = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NeogitSignatureNone = "Comment",
  NeogitStatusHEAD = {
    fg = "#ff4d00"
  },
  NeogitSubtleText = "Comment",
  NeogitTagDistance = "NeogitSectionHeaderCount",
  NeogitTagName = {
    bg = "#d9edff",
    fg = "#0087ff"
  },
  NeogitWinSeparator = "WinSeparator",
  NeotestAdapterName = {
    fg = "#4fb000"
  },
  NeotestDir = {
    fg = "#0087ff"
  },
  NeotestExpandMarker = {
    fg = "#7f7f7f"
  },
  NeotestFailed = {
    fg = "#ff005f"
  },
  NeotestFile = {
    fg = "#00b3e3"
  },
  NeotestFocused = {
    fg = "#ff4d00"
  },
  NeotestIndent = {
    fg = "#7f7f7f"
  },
  NeotestMarked = {
    bg = "#a5a5a5",
    bold = true,
    fg = "#ff8f00"
  },
  NeotestNamespace = {
    fg = "#ff004b"
  },
  NeotestPassed = {
    fg = "#4fb000"
  },
  NeotestRunning = {
    fg = "#ff6700"
  },
  NeotestSkipped = {
    fg = "#ff8f00"
  },
  NeotestTarget = {
    fg = "#0087ff"
  },
  NeotestTest = {
    fg = "#4c4c4c"
  },
  NeotestUnknown = {
    fg = "#4c4c4c"
  },
  NeotestWatching = {
    fg = "#f6f557"
  },
  NeotestWinSelect = {
    bold = true,
    fg = "#00b3e3"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NoiceFormatEvent = {
    fg = "#7f7f7f"
  },
  NoiceFormatKind = {
    fg = "#4c4c4c"
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
    fg = "#0e0e0e"
  },
  NotifyBackground = {
    bg = "#ffffff",
    fg = "#333333"
  },
  NotifyDEBUGBody = "Normal",
  NotifyDEBUGBorder = {
    bg = "#ffffff",
    fg = "#d9d9d9"
  },
  NotifyDEBUGIcon = {
    fg = "#7f7f7f"
  },
  NotifyDEBUGTitle = "NotifyDEBUGIcon",
  NotifyERRORBody = "Normal",
  NotifyERRORBorder = {
    bg = "#ffffff",
    fg = "#ffb3cf"
  },
  NotifyERRORIcon = {
    fg = "#ff005f"
  },
  NotifyERRORTitle = "NotifyERRORIcon",
  NotifyINFOBody = "Normal",
  NotifyINFOBorder = {
    bg = "#ffffff",
    fg = "#b3dbff"
  },
  NotifyINFOIcon = {
    fg = "#0087ff"
  },
  NotifyINFOTitle = "NotifyINFOIcon",
  NotifyTRACEBody = "Normal",
  NotifyTRACEBorder = {
    bg = "#ffffff",
    fg = "#cfccf1"
  },
  NotifyTRACEIcon = {
    fg = "#6054d0"
  },
  NotifyTRACETitle = "NotifyTRACEIcon",
  NotifyWARNBody = "Normal",
  NotifyWARNBorder = {
    bg = "#ffffff",
    fg = "#ffcab3"
  },
  NotifyWARNIcon = {
    fg = "#ff4d00"
  },
  NotifyWARNTitle = "NotifyWARNIcon",
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
    fg = "#0e0e0e"
  },
  NvimTreeIndentMarker = {
    fg = "#c9c9c9"
  },
  NvimTreeNormal = {
    bg = "#f1f1f1",
    fg = "#0e0e0e"
  },
  NvimTreeNormalNC = "NvimTreeNormal",
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
  QuickFixLine = {
    bold = true,
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
  RenameNormal = {
    bg = "#e3e3e3",
    fg = "#ff4d00"
  },
  RenderMarkdownBullet = "@tag",
  RenderMarkdownChecked = {
    fg = "#4fb000"
  },
  RenderMarkdownCode = {
    bg = "#e3e3e3"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = "@tag",
  RenderMarkdownH1 = {
    bold = true,
    fg = "#333333"
  },
  RenderMarkdownH1Bg = {
    bg = "#ebebeb",
    fg = "#333333"
  },
  RenderMarkdownH2 = {
    bold = true,
    fg = "#ff8f00"
  },
  RenderMarkdownH2Bg = {
    bg = "#fff4e6",
    fg = "#ff8f00"
  },
  RenderMarkdownH3 = {
    bold = true,
    fg = "#ff4d00"
  },
  RenderMarkdownH3Bg = {
    bg = "#ffede6",
    fg = "#ff4d00"
  },
  RenderMarkdownH4 = {
    bold = true,
    fg = "#ff005f"
  },
  RenderMarkdownH4Bg = {
    bg = "#ffe6ef",
    fg = "#ff005f"
  },
  RenderMarkdownH5 = {
    bold = true,
    fg = "#6054d0"
  },
  RenderMarkdownH5Bg = {
    bg = "#efeefa",
    fg = "#6054d0"
  },
  RenderMarkdownH6 = {
    bold = true,
    fg = "#00b3e3"
  },
  RenderMarkdownH6Bg = {
    bg = "#e6f7fc",
    fg = "#00b3e3"
  },
  RenderMarkdownHint = {
    fg = "#6054d0"
  },
  RenderMarkdownLink = {
    fg = "#14809d"
  },
  RenderMarkdownQuote = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  RenderMarkdownSuccess = "RenderMarkdownChecked",
  RenderMarkdownTableHead = "@tag",
  RenderMarkdownTableRow = "@tag",
  RenderMarkdownUnchecked = {
    fg = "#0087ff"
  },
  Repeat = {
    fg = "#ff004b"
  },
  SagaCount = {
    bg = "#b2b2b2",
    fg = "#ff004b"
  },
  SagaFinderFname = {
    fg = "#ff4d00",
    italic = true
  },
  SagaFolder = {
    fg = "#00b3e3"
  },
  SagaInCurrent = {
    fg = "#ff9466"
  },
  SagaLightBulb = "DiagnosticSignHint",
  SagaNormal = "NormalFloat",
  SagaSearch = {
    bg = "#ff8f00",
    bold = true,
    fg = "#ffffff"
  },
  SagaSep = {
    fg = "#ff004b"
  },
  SagaSpinner = {
    fg = "#4fb000"
  },
  SagaSpinnerTitle = {
    fg = "#ff4d00",
    italic = true
  },
  SagaTitle = "Title",
  SagaToggle = "Delimiter",
  ScrollbarCursor = {
    bg = "#ebebeb",
    fg = "#0e0e0e"
  },
  ScrollbarCursorHandle = {
    bg = "#ebebeb",
    fg = "#171717"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#ff005f"
  },
  ScrollbarErrorHandle = {
    bg = "#ebebeb",
    fg = "#ff005f"
  },
  ScrollbarGitAdd = {
    bg = "NONE",
    fg = "#4fb000"
  },
  ScrollbarGitAddHandle = {
    bg = "#ebebeb",
    fg = "#4fb000"
  },
  ScrollbarGitChange = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  ScrollbarGitChangeHandle = {
    bg = "#ebebeb",
    fg = "#ff4d00"
  },
  ScrollbarGitDelete = {
    bg = "NONE",
    fg = "#ff004b"
  },
  ScrollbarGitDeleteHandle = {
    bg = "#ebebeb",
    fg = "#ff004b"
  },
  ScrollbarHandle = {
    bg = "#ebebeb",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#4fb000"
  },
  ScrollbarHintHandle = {
    bg = "#ebebeb",
    fg = "#4fb000"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#0087ff"
  },
  ScrollbarInfoHandle = {
    bg = "#ebebeb",
    fg = "#0087ff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#333333"
  },
  ScrollbarMiscHandle = {
    bg = "#ebebeb",
    fg = "#ff8f00"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#6054d0"
  },
  ScrollbarSearchHandle = {
    bg = "#ebebeb",
    fg = "#6054d0"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#ff4d00"
  },
  ScrollbarWarnHandle = {
    bg = "#ebebeb",
    fg = "#ff4d00"
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
  SnacksDashboardDesc = {
    fg = "#ff004b"
  },
  SnacksDashboardDir = {
    fg = "#7f7f7f"
  },
  SnacksDashboardFile = {
    fg = "#171717"
  },
  SnacksDashboardFooter = {
    fg = "#7f7f7f",
    italic = true
  },
  SnacksDashboardHeader = {
    fg = "#ff4d00"
  },
  SnacksDashboardIcon = {
    fg = "#0e0e0e"
  },
  SnacksDashboardKey = {
    fg = "#6054d0"
  },
  SnacksDashboardNormal = {
    fg = "#0e0e0e"
  },
  SnacksDashboardSpecial = {
    fg = "#4c4c4c",
    italic = true
  },
  SnacksDashboardTitle = {
    fg = "#ff004b"
  },
  SnacksNotifierBorderDebug = "SnacksNotifierTitleDebug",
  SnacksNotifierBorderTrace = "SnacksNotifierTitleTrace",
  SnacksNotifierHistoryDateTime = {
    fg = "#4c4c4c"
  },
  SnacksNotifierIconDebug = "SnacksNotifierTitleDebug",
  SnacksNotifierIconTrace = "SnacksNotifierTitleTrace",
  SnacksNotifierTitleDebug = {
    fg = "#ff8f00"
  },
  SnacksNotifierTitleTrace = {
    fg = "#0e0e0e"
  },
  Sneak = {
    bg = "#ff004b",
    bold = true,
    fg = "#333333"
  },
  SneakLabel = {
    bg = "#ff004b",
    bold = true,
    fg = "#000001"
  },
  SneakScope = {
    bg = "#e3e3e3"
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
    fg = "#0e0e0e"
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
    fg = "#4c4c4c"
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
  TelescopeBorder = "FloatBorder",
  TelescopeNormal = {
    bg = "#e3e3e3",
    fg = "#4c4c4c"
  },
  TelescopePreviewLine = {
    bg = "#f1f1f1"
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
  TexSnip = {
    fg = "#4fb000"
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
    bg = "#ff6700",
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
    fg = "#ff6700"
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
  TodoSignHACK = "TodoFgHACK",
  TodoSignNOTE = "TodoFgNOTE",
  TodoSignPERF = "TodoFgPERF",
  TodoSignTEST = "TodoFgTEST",
  TodoSignTODO = "TodoFgTODO",
  TodoSignWARN = "TodoFgWARN",
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
  TroubleCode = {
    fg = "#ff005f"
  },
  TroubleCount = {
    bg = "#ffffff",
    bold = true,
    fg = "#333333"
  },
  TroubleDiagnosticsBasename = "TroubleLspFilename",
  TroubleDirectory = {
    fg = "#333333"
  },
  TroubleIconDirectory = "TroubleLspFilename",
  TroubleIndentFoldClosed = {
    fg = "#333333"
  },
  TroubleLspCount = "TroubleCount",
  TroubleLspFilename = {
    fg = "#00b3e3"
  },
  TroubleLspSymbolName = {
    fg = "#ff6826"
  },
  TroublePos = {
    fg = "#7f7f7f"
  },
  TroubleText = {
    fg = "#0e0e0e"
  },
  Type = {},
  Typedef = {
    fg = "#00b3e3"
  },
  Underlined = {
    underline = true
  },
  UndoTreeBranch = {
    fg = "#ff4d00"
  },
  UndoTreeCurrent = {
    bg = "#b2b2b2",
    fg = "#ff004b"
  },
  UndoTreeHead = {
    bold = true,
    fg = "#00b3e3"
  },
  UndoTreeHelp = "Normal",
  UndoTreeHelpKey = {
    fg = "#6054d0"
  },
  UndoTreeHelpTitle = {
    fg = "#ff004b"
  },
  UndoTreeNext = {
    fg = "#4c4c4c"
  },
  UndoTreeNode = {
    fg = "#4fb000"
  },
  UndoTreeSavedBig = {
    bold = true,
    fg = "#ff004b"
  },
  UndoTreeSavedSmall = {
    fg = "#333333"
  },
  UndoTreeSeq = "Comment",
  UndoTreeTimeStamp = "UndoTreeBranch",
  VertSplit = {
    fg = "#00b3e3"
  },
  VimwikiCellSeparator = "Keyword",
  VimwikiCode = {
    fg = "#6054d0"
  },
  VimwikiHR = {
    fg = "#ff004b"
  },
  VimwikiHeader1 = "Title",
  VimwikiHeader2 = "Title",
  VimwikiHeader3 = "Title",
  VimwikiHeader4 = "Title",
  VimwikiHeader5 = "Title",
  VimwikiHeader6 = "Title",
  VimwikiHeaderChar = {
    fg = "#ff004b"
  },
  VimwikiLink = {
    fg = "#00b3e3"
  },
  VimwikiLinkChar = "Keyword",
  VimwikiList = "Keyword",
  VimwikiPre = {
    fg = "#7f7f7f"
  },
  VimwikiTag = {
    fg = "#0087ff"
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
  WhichKeyBorder = "WhichKeyFloat",
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
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    fg = "#00b3e3"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
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
  lCursor = {
    bg = "#00b3e3",
    fg = "#ffffff"
  },
  netrwClassify = {
    fg = "#ff004b"
  },
  netrwCmdNote = {
    fg = "#0e0e0e"
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
  netrwLink = "netrwClassify",
  netrwList = "netrwDir",
  netrwMarkFile = {
    bg = "#ff4d00",
    bold = true,
    fg = "#000001"
  },
  netrwPlain = "netrwCmdNote",
  netrwQuickHelp = {
    fg = "#0e0e0e",
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

local terminal_colors = {
  ["vim.g.terminal_color_0"] = "#000001",
  ["vim.g.terminal_color_1"] = "#fc1a70",
  ["vim.g.terminal_color_10"] = "#a4e400",
  ["vim.g.terminal_color_11"] = "#ffff87",
  ["vim.g.terminal_color_12"] = "#62d8f1",
  ["vim.g.terminal_color_13"] = "#ff005f",
  ["vim.g.terminal_color_14"] = "#0087ff",
  ["vim.g.terminal_color_15"] = "#ffffff",
  ["vim.g.terminal_color_2"] = "#a4e400",
  ["vim.g.terminal_color_3"] = "#ffff87",
  ["vim.g.terminal_color_4"] = "#62d8f1",
  ["vim.g.terminal_color_5"] = "#ff005f",
  ["vim.g.terminal_color_6"] = "#0087ff",
  ["vim.g.terminal_color_7"] = "#e6e6e6",
  ["vim.g.terminal_color_8"] = "#444444",
  ["vim.g.terminal_color_9"] = "#fc1a70"
}