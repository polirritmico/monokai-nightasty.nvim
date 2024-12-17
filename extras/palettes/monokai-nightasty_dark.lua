-- ColorScheme: Monokai NighTasty Dark

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
  fg_dark = "#e6e6e6",
  fg_float = "#ffffff",
  fg_gutter = "#3e3e3e",
  fg_search = "#000001",
  fg_sidebar = "#e6e6e6",
  fg_statusline = "#e6e6e6",
  git = {
    add = "#a4e400",
    change = "#ff9700",
    delete = "#fc1a70"
  },
  green = "#a4e400",
  green_alt = "#83dc78",
  green_light = "#a4e400",
  grey = "#8a8a8a",
  grey_dark = "#4b4b4b",
  grey_darker = "#444444",
  grey_darker_alt = "#3e3e3e",
  grey_light = "#bcbcbc",
  grey_lighter = "#dedede",
  grey_medium = "#585858",
  hint = "#83dc78",
  info = "#0087ff",
  lualine = {
    command_fg = "#a4e400",
    normal_bg = "#a4e400",
    normal_fg = "#000001"
  },
  magenta = "#fc1a70",
  none = "NONE",
  note = "#ffc136",
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
  ["@annotation"] = "PreProc",
  ["@attribute"] = "PreProc",
  ["@attribute.builtin"] = {
    fg = "#fc1a70",
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
    fg = "#62d8f1",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#fc1a70"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    fg = "#a4e400"
  },
  ["@function.builtin.bash"] = {
    fg = "#62d8f1"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "Function",
  ["@keyword"] = {
    fg = "#fc1a70",
    italic = false
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.conditional.htmldjango"] = {
    fg = "#ff9700"
  },
  ["@keyword.conditional.ternary"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = {
    fg = "#aaaaaa",
    nocombine = true
  },
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#62d8f1",
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
    fg = "#ffff87"
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
    fg = "#4f96a5"
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
    fg = "#62d8f1"
  },
  ["@markup.link.label"] = {
    fg = "#62d8f1",
    underline = true
  },
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = {
    fg = "#ff9700"
  },
  ["@markup.list"] = {
    fg = "#fc1a70"
  },
  ["@markup.list.checked"] = "@markup.list",
  ["@markup.list.unchecked"] = "@markup.list",
  ["@markup.math"] = "Special",
  ["@markup.quote"] = {
    bg = "#262626",
    fg = "#ffffff",
    italic = true
  },
  ["@markup.raw"] = "String",
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
    fg = "#62d8f1"
  },
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = "Operator",
  ["@property"] = {
    fg = "#e6e6e6"
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
  ["@punctuation.special"] = "Delimiter",
  ["@string"] = "String",
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
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@type.qualifier.c_sharp"] = {
    fg = "#ff9700",
    italic = true
  },
  ["@variable"] = {
    fg = "#ffffff"
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
    fg = "#3e3e3e"
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
    fg = "#ffffff"
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
    fg = "#fc1a70"
  },
  AlphaFooter = {
    fg = "#8a8a8a",
    italic = true
  },
  AlphaHeader = {
    fg = "#ff9700"
  },
  AlphaHeaderLabel = {
    fg = "#fc1a70"
  },
  AlphaShortcut = {
    fg = "#af87ff"
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#af87ff"
  },
  BufferAlternate = {
    bg = "#313131",
    fg = "#bcbcbc",
    italic = true
  },
  BufferAlternateADDED = {
    bg = "#313131",
    fg = "#b6e933"
  },
  BufferAlternateBtn = {
    bg = "#313131",
    fg = "#bcbcbc"
  },
  BufferAlternateCHANGED = {
    bg = "#313131",
    fg = "#ffac33"
  },
  BufferAlternateDELETED = {
    bg = "#313131",
    fg = "#fd488d"
  },
  BufferAlternateERROR = {
    bg = "#313131",
    fg = "#ff337f"
  },
  BufferAlternateHINT = {
    bg = "#313131",
    fg = "#9ce393"
  },
  BufferAlternateINFO = {
    bg = "#313131",
    fg = "#339fff"
  },
  BufferAlternateMod = "BufferAlternateBtn",
  BufferAlternateNumber = "BufferAlternateBtn",
  BufferAlternateSign = {
    bg = "#313131",
    fg = "#af87ff"
  },
  BufferAlternateSignRight = {
    bg = "#313131",
    fg = "#af87ff"
  },
  BufferAlternateTarget = "BufferCurrentTarget",
  BufferAlternateWARN = {
    bg = "#313131",
    fg = "#ffac33"
  },
  BufferCurrent = {
    bg = "#404040",
    bold = true,
    fg = "#ffffff",
    italic = true
  },
  BufferCurrentADDED = {
    bg = "#404040",
    fg = "#a4e400"
  },
  BufferCurrentBtn = {
    bg = "#404040",
    fg = "#fc1a70"
  },
  BufferCurrentCHANGED = {
    bg = "#404040",
    fg = "#ff9700"
  },
  BufferCurrentDELETED = {
    bg = "#404040",
    fg = "#fc1a70"
  },
  BufferCurrentERROR = {
    bg = "#404040",
    fg = "#ff005f"
  },
  BufferCurrentHINT = {
    bg = "#404040",
    fg = "#83dc78"
  },
  BufferCurrentINFO = {
    bg = "#404040",
    fg = "#0087ff"
  },
  BufferCurrentMod = {
    bg = "#404040",
    fg = "#ff9700"
  },
  BufferCurrentNumber = {
    bg = "#404040",
    fg = "#bcbcbc"
  },
  BufferCurrentPin = "BufferCurrentMod",
  BufferCurrentSign = {
    bg = "#404040",
    fg = "#62d8f1"
  },
  BufferCurrentSignRight = "BufferCurrentSign",
  BufferCurrentTarget = {
    bg = "#ff9700",
    bold = true,
    fg = "#000001"
  },
  BufferCurrentWARN = {
    bg = "#404040",
    fg = "#ff9700"
  },
  BufferInactive = {
    bg = "#262626",
    fg = "#ffffff"
  },
  BufferInactiveADDED = {
    bg = "#262626",
    fg = "#b6e933"
  },
  BufferInactiveBtn = "BufferInactive",
  BufferInactiveCHANGED = {
    bg = "#262626",
    fg = "#ffac33"
  },
  BufferInactiveDELETED = {
    bg = "#262626",
    fg = "#fd488d"
  },
  BufferInactiveERROR = {
    bg = "#262626",
    fg = "#ff337f"
  },
  BufferInactiveHINT = {
    bg = "#262626",
    fg = "#9ce393"
  },
  BufferInactiveINFO = {
    bg = "#262626",
    fg = "#339fff"
  },
  BufferInactiveMod = "BufferInactiveBtn",
  BufferInactiveNumber = "BufferInactive",
  BufferInactivePin = {
    bg = "#262626",
    fg = "#ffac33"
  },
  BufferInactiveSign = {
    bg = "#262626",
    fg = "#585858"
  },
  BufferInactiveSignRight = "BufferInactiveSign",
  BufferInactiveTarget = "BufferCurrentTarget",
  BufferInactiveWARN = {
    bg = "#262626",
    fg = "#ffac33"
  },
  BufferLineIndicatorSelected = {
    fg = "#ff9700"
  },
  BufferOffset = {
    bg = "#404040",
    fg = "#bcbcbc"
  },
  BufferTabpageFill = {
    bg = "#262626",
    fg = "#8a8a8a"
  },
  BufferTabpages = {
    bg = "#313131",
    fg = "#e6e6e6"
  },
  BufferTabpagesSep = {
    bg = "#313131",
    fg = "#fc1a70"
  },
  BufferVisible = {
    bg = "#313131",
    fg = "#ffffff",
    italic = true
  },
  BufferVisibleADDED = {
    bg = "#313131",
    fg = "#b6e933"
  },
  BufferVisibleBtn = {
    bg = "#313131",
    fg = "#ffffff"
  },
  BufferVisibleCHANGED = {
    bg = "#313131",
    fg = "#ffac33"
  },
  BufferVisibleDELETED = {
    bg = "#313131",
    fg = "#fd488d"
  },
  BufferVisibleERROR = {
    bg = "#313131",
    fg = "#ff337f"
  },
  BufferVisibleHINT = {
    bg = "#313131",
    fg = "#9ce393"
  },
  BufferVisibleINFO = {
    bg = "#313131",
    fg = "#339fff"
  },
  BufferVisibleMod = "BufferVisibleBtn",
  BufferVisibleNumber = "BufferVisibleBtn",
  BufferVisibleSign = {
    bg = "#313131",
    fg = "#62d8f1"
  },
  BufferVisibleSignRight = "BufferVisibleSign",
  BufferVisibleTarget = "BufferCurrentTarget",
  BufferVisibleWARN = {
    bg = "#313131",
    fg = "#ffac33"
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
    bg = "NONE",
    fg = "#585858",
    italic = true
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#ffffff"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
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
    fg = "#8a8a8a"
  },
  CodeActionText = "Identifier",
  CodeBlock = {
    bg = "#1e1e1e"
  },
  ColorColumn = {
    bg = "#2f2f2f"
  },
  Comment = {
    fg = "#8a8a8a",
    italic = true
  },
  Conceal = {
    fg = "#585858"
  },
  Conditional = {
    fg = "#fc1a70"
  },
  Constant = {
    fg = "#af87ff"
  },
  CurSearch = "IncSearch",
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
  DapUIBreakpointsCurrentLine = {
    bold = true,
    fg = "#a4e400"
  },
  DapUIBreakpointsDisabledLine = {
    fg = "#8a8a8a"
  },
  DapUIBreakpointsInfo = {
    fg = "#a4e400"
  },
  DapUIBreakpointsPath = {
    fg = "#62d8f1"
  },
  DapUIDecoration = {
    fg = "#fc1a70"
  },
  DapUIFloatBorder = "DapUIBreakpointsPath",
  DapUILineNumber = {
    fg = "#ffff87"
  },
  DapUIModifiedValue = {
    bold = true,
    fg = "#62d8f1"
  },
  DapUINormal = "Normal",
  DapUIPlayPause = {
    bg = "#444444",
    fg = "#a4e400"
  },
  DapUIPlayPauseNC = "DapUIPlayPause",
  DapUIRestart = "DapUIPlayPause",
  DapUIScope = "DapUIBreakpointsPath",
  DapUISource = {
    fg = "#ff9700"
  },
  DapUIStepBack = {
    bg = "#444444",
    fg = "#62d8f1"
  },
  DapUIStepBackNC = "DapUIStepBack",
  DapUIStepInto = "DapUIStepBack",
  DapUIStepIntoNC = "DapUIStepBack",
  DapUIStepOut = "DapUIStepBack",
  DapUIStepOutNC = "DapUIStepBack",
  DapUIStepOver = "DapUIStepBack",
  DapUIStepOverNC = "DapUIStepBack",
  DapUIStop = {
    bg = "#444444",
    fg = "#ff005f"
  },
  DapUIStopNC = "DapUIStop",
  DapUIStoppedThread = "DapUIBreakpointsPath",
  DapUIThread = "DapUIBreakpointsInfo",
  DapUIType = {
    fg = "#af87ff"
  },
  DapUIUnavailable = {
    bg = "#444444",
    fg = "#8a8a8a"
  },
  DapUIUnavailableNC = "DapUIUnavailable",
  DapUIValue = {
    bg = "NONE",
    fg = "#bcbcbc"
  },
  DapUIVariable = {
    bg = "NONE",
    fg = "#ffffff"
  },
  DapUIWatchesEmpty = "DapUIDecoration",
  DapUIWatchesError = "DapUIDecoration",
  DapUIWatchesValue = "DapUIThread",
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
  DashboardMruIcon = "DashboardIcon",
  DashboardMruTitle = {
    bold = true,
    fg = "#fc1a70"
  },
  DashboardProjectIcon = {
    fg = "#62d8f1"
  },
  DashboardProjectTitle = "DashboardIcon",
  DashboardProjectTitleIcon = "DashboardIcon",
  DashboardShortCut = "DashboardKey",
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
    italic = true,
    sp = "#bcbcbc",
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
    bg = "#fff7eb",
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
  FlashBackdrop = {
    fg = "#585858"
  },
  FlashCurrent = {
    bg = "#000001",
    bold = true,
    fg = "#ffff87"
  },
  FlashLabel = {
    bg = "#fc1a70",
    fg = "#000001"
  },
  FlashMatch = {
    bg = "#fc1a70",
    fg = "#ffffff"
  },
  FlashPromptIcon = {
    fg = "#ff9700"
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
    bg = "#262626",
    fg = "#62d8f1",
    italic = true
  },
  Function = {
    fg = "#a4e400"
  },
  FzfLuaBorder = "FloatBorder",
  FzfLuaBufFlagAlt = {
    fg = "#62d8f1"
  },
  FzfLuaBufFlagCur = {
    fg = "#fc1a70"
  },
  FzfLuaBufName = {
    fg = "#0087ff"
  },
  FzfLuaBufNr = {
    fg = "#bcbcbc"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaCursorLine = "CursorLine",
  FzfLuaDirPart = {
    fg = "#8a8a8a"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = {
    bg = "#444444",
    fg = "#ffffff"
  },
  FzfLuaFzfGutter = {
    bg = "#444444"
  },
  FzfLuaFzfInfo = {
    fg = "#e6e6e6"
  },
  FzfLuaFzfNormal = {
    bg = "#262626",
    fg = "#bcbcbc"
  },
  FzfLuaFzfPointer = {
    fg = "#fc1a70"
  },
  FzfLuaFzfPrompt = {
    fg = "#0087ff"
  },
  FzfLuaFzfQuery = {
    fg = "#bcbcbc"
  },
  FzfLuaFzfScrollbar = "PmenuSbar",
  FzfLuaFzfSeparator = {
    fg = "#3e3e3e"
  },
  FzfLuaFzfSpinner = {
    fg = "#a4e400"
  },
  FzfLuaHeaderBind = {
    fg = "#af87ff"
  },
  FzfLuaHeaderText = {
    fg = "#ff9700",
    italic = true
  },
  FzfLuaLiveSym = "Special",
  FzfLuaNormal = {
    bg = "#262626",
    fg = "#e6e6e6"
  },
  FzfLuaPathColNr = {
    fg = "#62d8f1"
  },
  FzfLuaPathLineNr = {
    fg = "#af87ff"
  },
  FzfLuaTabMarker = {
    fg = "#a4e400"
  },
  FzfLuaTabTitle = {
    bold = true,
    fg = "#ff9700"
  },
  GitGutterAdd = {
    fg = "#a4e400"
  },
  GitGutterAddLineNr = {
    fg = "#a4e400"
  },
  GitGutterChange = {
    fg = "#ff9700"
  },
  GitGutterChangeLineNr = {
    fg = "#ff9700"
  },
  GitGutterDelete = {
    fg = "#fc1a70"
  },
  GitGutterDeleteLineNr = {
    fg = "#fc1a70"
  },
  GitSignsAdd = "diffAdded",
  GitSignsAddInline = {
    sp = "#83dc78",
    undercurl = true
  },
  GitSignsChange = "diffChanged",
  GitSignsChangeInline = {
    sp = "#0087ff",
    undercurl = true
  },
  GitSignsCurrentLineBlame = {
    bg = "#444444",
    fg = "#0087ff",
    italic = true
  },
  GitSignsDelete = "diffRemoved",
  GitSignsDeleteInline = {
    bg = "#fc1a70",
    fg = "#4b2533"
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
  IblIndent = {
    fg = "#3e3e3e",
    nocombine = true
  },
  IblScope = {
    fg = "#ffc166",
    nocombine = true
  },
  IblWhitespace = {
    fg = "#e6e6e6",
    nocombine = true
  },
  Identifier = {
    fg = "#ffffff"
  },
  IncSearch = {
    bg = "#af87ff",
    bold = true,
    fg = "#000001"
  },
  Include = {
    fg = "#fc1a70"
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#fc1a70",
    italic = false
  },
  Label = {
    fg = "#ffff87"
  },
  LazyCommitScope = {
    fg = "#ff9700",
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#fc1a70"
  },
  LazyProgressDone = "LazyCommitType",
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
  LeapBackgrop = {
    fg = "#585858"
  },
  LeapLabel = {
    bg = "#fc1a70",
    bold = true,
    fg = "#000001"
  },
  LeapMatch = {
    bg = "#fc1a70",
    bold = true,
    fg = "#ffffff"
  },
  LineNr = {
    fg = "#4b4b4b"
  },
  LineNrBe = {
    fg = "#a4e400"
  },
  LspCodeLens = {
    bg = "#fbf9ff",
    fg = "#c3a5ff",
    italic = true
  },
  LspCodeLensSeparator = {
    bg = "#fbf9ff",
    fg = "#af87ff",
    italic = true
  },
  LspInfoBorder = {
    bg = "#262626",
    fg = "#ffffff"
  },
  LspInlayHint = {
    fg = "#8a8a8a",
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
    bg = "#3e3e3e"
  },
  LspReferenceWrite = "LspReferenceText",
  LspSignatureActiveParameter = {
    bg = "#444444",
    bold = true
  },
  Macro = {
    fg = "#fc1a70"
  },
  MatchParen = {
    bold = true,
    fg = "#fc1a70",
    underline = true
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#a4e400"
  },
  MiniDiffSignChange = {
    fg = "#ff9700"
  },
  MiniDiffSignDelete = {
    fg = "#fc1a70"
  },
  MiniHipatternsFixme = {
    bg = "#fc1a70",
    bold = true,
    fg = "#ffffff"
  },
  MiniHipatternsHack = {
    bg = "#ff9700",
    bold = true,
    fg = "#000001"
  },
  MiniHipatternsNote = {
    bg = "#0087ff",
    bold = true,
    fg = "#000001"
  },
  MiniHipatternsTodo = {
    bg = "#a4e400",
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
    fg = "#62d8f1"
  },
  MiniIconsGreen = {
    fg = "#a4e400"
  },
  MiniIconsGrey = {
    fg = "#bcbcbc"
  },
  MiniIconsOrange = {
    fg = "#ff9700"
  },
  MiniIconsPurple = {
    fg = "#af87ff"
  },
  MiniIconsRed = {
    fg = "#fc1a70"
  },
  MiniIconsYellow = {
    fg = "#ffff87"
  },
  MiniIndentscopeSymbol = {
    fg = "#ffc166",
    nocombine = true
  },
  ModeMsg = {
    bold = true,
    fg = "#e6e6e6"
  },
  MoreMsg = {
    fg = "#a4e400"
  },
  MsgArea = {
    fg = "#e6e6e6"
  },
  MsgSeparator = {
    sp = "#62d8f1",
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
    fg = "#e6e6e6"
  },
  NeoTreeNormalNC = "NeoTreeNormal",
  NeoTreeRootName = {
    fg = "#fc1a70",
    italic = true
  },
  NeoTreeWinSeparator = {
    bg = "#262626",
    fg = "#262626"
  },
  NeogitBranch = {
    fg = "#a4e400"
  },
  NeogitBranchHead = {
    fg = "#62d8f1"
  },
  NeogitChangeAdded = {
    fg = "#62d8f1",
    italic = true
  },
  NeogitChangeCopied = {
    fg = "#af87ff",
    italic = true
  },
  NeogitChangeDeleted = {
    fg = "#fc1a70",
    italic = true
  },
  NeogitChangeModified = {
    fg = "#a4e400",
    italic = true
  },
  NeogitChangeNewFile = {
    fg = "#0087ff",
    italic = true
  },
  NeogitChangeRenamed = {
    fg = "#ff9700",
    italic = true
  },
  NeogitChangeUpdated = {
    fg = "#ffff87",
    italic = true
  },
  NeogitCommandCodeNormal = {
    fg = "#a4e400"
  },
  NeogitCommandText = {
    fg = "#ff9700"
  },
  NeogitCommandTime = "NeogitTagDistance",
  NeogitCommitViewDescription = {
    fg = "#ff9700"
  },
  NeogitCommitViewHeader = {
    bg = "#313131",
    fg = "#af87ff"
  },
  NeogitDiffAdd = {
    bg = "#9ea392",
    fg = "#bfec4d"
  },
  NeogitDiffAddCursor = {
    bg = "#404040"
  },
  NeogitDiffAddHighlight = "DiffAdd",
  NeogitDiffAdditions = {
    fg = "#a4e400"
  },
  NeogitDiffContext = {
    bg = "#262626",
    fg = "#bcbcbc"
  },
  NeogitDiffContextCursor = "NeogitDiffAddCursor",
  NeogitDiffContextHighlight = {
    bg = "#262626",
    fg = "#ffffff"
  },
  NeogitDiffDelete = {
    bg = "#a59299",
    fg = "#fd5f9b"
  },
  NeogitDiffDeleteCursor = "NeogitDiffAddCursor",
  NeogitDiffDeleteHighlight = "DiffDelete",
  NeogitDiffDeletions = {
    fg = "#fc1a70"
  },
  NeogitDiffHeader = "NeogitBranchHead",
  NeogitDiffHeaderCursor = "NeogitDiffAddCursor",
  NeogitFilePath = {
    fg = "#0087ff"
  },
  NeogitFloatHeader = {
    bg = "#262626",
    bold = true,
    fg = "#0087ff"
  },
  NeogitFloatHeaderHighlight = {
    bg = "#0087ff",
    bold = true,
    fg = "#262626"
  },
  NeogitGraphAuthor = {
    fg = "#fc1a70"
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
    fg = "#62d8f1"
  },
  NeogitGraphBoldGray = {
    bold = true,
    fg = "#8a8a8a"
  },
  NeogitGraphBoldGreen = {
    bold = true,
    fg = "#a4e400"
  },
  NeogitGraphBoldOrange = {
    bold = true,
    fg = "#ff9700"
  },
  NeogitGraphBoldPurple = {
    bold = true,
    fg = "#af87ff"
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
    fg = "#ffff87"
  },
  NeogitGraphCyan = {
    fg = "#62d8f1"
  },
  NeogitGraphGray = {
    fg = "#8a8a8a"
  },
  NeogitGraphGreen = {
    fg = "#a4e400"
  },
  NeogitGraphOrange = {
    fg = "#ff9700"
  },
  NeogitGraphPurple = {
    fg = "#af87ff"
  },
  NeogitGraphRed = {
    fg = "#ff005f"
  },
  NeogitGraphWhite = {
    fg = "#ffffff"
  },
  NeogitGraphYellow = {
    fg = "#ffff87"
  },
  NeogitHunkHeader = {
    bold = true,
    fg = "#91e4f5"
  },
  NeogitHunkHeaderCursor = "NeogitDiffAddCursor",
  NeogitHunkHeaderHighlight = {
    bg = "#313131",
    bold = true,
    fg = "#62d8f1"
  },
  NeogitObjectId = {
    fg = "#bcbcbc",
    italic = true
  },
  NeogitPopupActionDisabled = {
    fg = "#8a8a8a",
    italic = true
  },
  NeogitPopupActionKey = {
    fg = "#ffff87"
  },
  NeogitPopupBranchName = {
    fg = "#fc1a70"
  },
  NeogitPopupConfigDisabled = "NeogitPopupActionDisabled",
  NeogitPopupConfigEnabled = {
    fg = "#ff9700",
    italic = true
  },
  NeogitPopupConfigKey = "NeogitPopupActionKey",
  NeogitPopupOptionDisabled = "NeogitPopupActionDisabled",
  NeogitPopupOptionEnabled = "NeogitPopupConfigEnabled",
  NeogitPopupOptionKey = "NeogitPopupActionKey",
  NeogitPopupSectionTitle = {
    fg = "#a4e400"
  },
  NeogitPopupSwitchDisabled = "NeogitPopupActionDisabled",
  NeogitPopupSwitchEnabled = "NeogitPopupConfigEnabled",
  NeogitPopupSwitchKey = "NeogitPopupActionKey",
  NeogitRemote = {
    fg = "#af87ff"
  },
  NeogitSectionHeader = {
    fg = "#fc1a70"
  },
  NeogitSectionHeaderCount = {
    fg = "#bcbcbc"
  },
  NeogitSignatureBad = {
    bg = "#ff005f",
    fg = "#ffffff"
  },
  NeogitSignatureGood = {
    bg = "#2b2b2b",
    fg = "#a4e400"
  },
  NeogitSignatureMissing = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  NeogitSignatureNone = "Comment",
  NeogitStatusHEAD = {
    fg = "#ff9700"
  },
  NeogitSubtleText = "Comment",
  NeogitTagDistance = "NeogitSectionHeaderCount",
  NeogitTagName = {
    bg = "#25394b",
    fg = "#0087ff"
  },
  NeogitWinSeparator = "WinSeparator",
  NeotestAdapterName = {
    fg = "#a4e400"
  },
  NeotestDir = {
    fg = "#0087ff"
  },
  NeotestExpandMarker = {
    fg = "#8a8a8a"
  },
  NeotestFailed = {
    fg = "#ff005f"
  },
  NeotestFile = {
    fg = "#62d8f1"
  },
  NeotestFocused = {
    fg = "#ff9700"
  },
  NeotestIndent = {
    fg = "#8a8a8a"
  },
  NeotestMarked = {
    bg = "#585858",
    bold = true,
    fg = "#ffff87"
  },
  NeotestNamespace = {
    fg = "#fc1a70"
  },
  NeotestPassed = {
    fg = "#a4e400"
  },
  NeotestRunning = {
    fg = "#ffc136"
  },
  NeotestSkipped = {
    fg = "#ffff87"
  },
  NeotestTarget = {
    fg = "#0087ff"
  },
  NeotestTest = {
    fg = "#bcbcbc"
  },
  NeotestUnknown = {
    fg = "#bcbcbc"
  },
  NeotestWatching = {
    fg = "#f6f557"
  },
  NeotestWinSelect = {
    bold = true,
    fg = "#62d8f1"
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
    fg = "#8a8a8a"
  },
  NoiceFormatKind = {
    fg = "#bcbcbc"
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
    fg = "#e6e6e6"
  },
  NotifyBackground = {
    bg = "#2b2b2b",
    fg = "#ffffff"
  },
  NotifyDEBUGBody = "Normal",
  NotifyDEBUGBorder = {
    bg = "#2b2b2b",
    fg = "#dcdcdc"
  },
  NotifyDEBUGIcon = {
    fg = "#8a8a8a"
  },
  NotifyDEBUGTitle = "NotifyDEBUGIcon",
  NotifyERRORBody = "Normal",
  NotifyERRORBorder = {
    bg = "#2b2b2b",
    fg = "#ffb3cf"
  },
  NotifyERRORIcon = {
    fg = "#ff005f"
  },
  NotifyERRORTitle = "NotifyERRORIcon",
  NotifyINFOBody = "Normal",
  NotifyINFOBorder = {
    bg = "#2b2b2b",
    fg = "#b3dbff"
  },
  NotifyINFOIcon = {
    fg = "#0087ff"
  },
  NotifyINFOTitle = "NotifyINFOIcon",
  NotifyTRACEBody = "Normal",
  NotifyTRACEBorder = {
    bg = "#2b2b2b",
    fg = "#e7dbff"
  },
  NotifyTRACEIcon = {
    fg = "#af87ff"
  },
  NotifyTRACETitle = "NotifyTRACEIcon",
  NotifyWARNBody = "Normal",
  NotifyWARNBorder = {
    bg = "#2b2b2b",
    fg = "#ffe0b3"
  },
  NotifyWARNIcon = {
    fg = "#ff9700"
  },
  NotifyWARNTitle = "NotifyWARNIcon",
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
    fg = "#e6e6e6"
  },
  NvimTreeIndentMarker = {
    fg = "#3e3e3e"
  },
  NvimTreeNormal = {
    bg = "#262626",
    fg = "#e6e6e6"
  },
  NvimTreeNormalNC = "NvimTreeNormal",
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
  QuickFixLine = {
    bold = true,
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
  RenameNormal = {
    bg = "#262626",
    fg = "#ff9700"
  },
  RenderMarkdownBullet = "@tag",
  RenderMarkdownChecked = {
    fg = "#a4e400"
  },
  RenderMarkdownCode = {
    bg = "#262626"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = "@tag",
  RenderMarkdownH1 = {
    bold = true,
    fg = "#ffffff"
  },
  RenderMarkdownH1Bg = {
    bg = "#ffffff",
    fg = "#ffffff"
  },
  RenderMarkdownH2 = {
    bold = true,
    fg = "#ffff87"
  },
  RenderMarkdownH2Bg = {
    bg = "#fffff3",
    fg = "#ffff87"
  },
  RenderMarkdownH3 = {
    bold = true,
    fg = "#ff9700"
  },
  RenderMarkdownH3Bg = {
    bg = "#fff5e6",
    fg = "#ff9700"
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
    fg = "#af87ff"
  },
  RenderMarkdownH5Bg = {
    bg = "#f7f3ff",
    fg = "#af87ff"
  },
  RenderMarkdownH6 = {
    bold = true,
    fg = "#62d8f1"
  },
  RenderMarkdownH6Bg = {
    bg = "#effbfe",
    fg = "#62d8f1"
  },
  RenderMarkdownHint = {
    fg = "#af87ff"
  },
  RenderMarkdownLink = {
    fg = "#4f96a5"
  },
  RenderMarkdownQuote = {
    bg = "NONE",
    fg = "#ff9700"
  },
  RenderMarkdownSuccess = "RenderMarkdownChecked",
  RenderMarkdownTableHead = "@tag",
  RenderMarkdownTableRow = "@tag",
  RenderMarkdownUnchecked = {
    fg = "#0087ff"
  },
  Repeat = {
    fg = "#fc1a70"
  },
  SagaCount = {
    bg = "#4b4b4b",
    fg = "#fc1a70"
  },
  SagaFinderFname = {
    fg = "#ff9700",
    italic = true
  },
  SagaFolder = {
    fg = "#62d8f1"
  },
  SagaInCurrent = {
    fg = "#ffc166"
  },
  SagaLightBulb = "DiagnosticSignHint",
  SagaNormal = "NormalFloat",
  SagaSearch = {
    bg = "#ffff87",
    bold = true,
    fg = "#2b2b2b"
  },
  SagaSep = {
    fg = "#fc1a70"
  },
  SagaSpinner = {
    fg = "#a4e400"
  },
  SagaSpinnerTitle = {
    fg = "#ff9700",
    italic = true
  },
  SagaTitle = "Title",
  SagaToggle = "Delimiter",
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
  SnacksDashboardDesc = {
    fg = "#fc1a70"
  },
  SnacksDashboardDir = {
    fg = "#8a8a8a"
  },
  SnacksDashboardFile = {
    fg = "#dedede"
  },
  SnacksDashboardFooter = {
    fg = "#8a8a8a",
    italic = true
  },
  SnacksDashboardHeader = {
    fg = "#ff9700"
  },
  SnacksDashboardIcon = {
    fg = "#e6e6e6"
  },
  SnacksDashboardKey = {
    fg = "#af87ff"
  },
  SnacksDashboardNormal = {
    fg = "#e6e6e6"
  },
  SnacksDashboardSpecial = {
    fg = "#bcbcbc",
    italic = true
  },
  SnacksDashboardTitle = {
    fg = "#fc1a70"
  },
  SnacksNotifierBorderDebug = "SnacksNotifierTitleDebug",
  SnacksNotifierBorderTrace = "SnacksNotifierTitleTrace",
  SnacksNotifierHistoryDateTime = {
    fg = "#bcbcbc"
  },
  SnacksNotifierIconDebug = "SnacksNotifierTitleDebug",
  SnacksNotifierIconTrace = "SnacksNotifierTitleTrace",
  SnacksNotifierTitleDebug = {
    fg = "#ffff87"
  },
  SnacksNotifierTitleTrace = {
    fg = "#e6e6e6"
  },
  Sneak = {
    bg = "#fc1a70",
    bold = true,
    fg = "#ffffff"
  },
  SneakLabel = {
    bg = "#fc1a70",
    bold = true,
    fg = "#000001"
  },
  SneakScope = {
    bg = "#444444"
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
    fg = "#e6e6e6"
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
    fg = "#bcbcbc"
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
  TelescopeBorder = "FloatBorder",
  TelescopeNormal = {
    bg = "#262626",
    fg = "#bcbcbc"
  },
  TelescopePreviewLine = {
    bg = "#444444"
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
  TexSnip = {
    fg = "#a4e400"
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
    bg = "#ffc136",
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
    fg = "#ffc136"
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
  TodoSignHACK = "TodoFgHACK",
  TodoSignNOTE = "TodoFgNOTE",
  TodoSignPERF = "TodoFgPERF",
  TodoSignTEST = "TodoFgTEST",
  TodoSignTODO = "TodoFgTODO",
  TodoSignWARN = "TodoFgWARN",
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
  TroubleCode = {
    fg = "#ff005f"
  },
  TroubleCount = {
    bg = "#2b2b2b",
    bold = true,
    fg = "#ffffff"
  },
  TroubleDiagnosticsBasename = "TroubleLspFilename",
  TroubleDirectory = {
    fg = "#ffffff"
  },
  TroubleIconDirectory = "TroubleLspFilename",
  TroubleIndentFoldClosed = {
    fg = "#ffffff"
  },
  TroubleLspCount = "TroubleCount",
  TroubleLspFilename = {
    fg = "#62d8f1"
  },
  TroubleLspSymbolName = {
    fg = "#ffa726"
  },
  TroublePos = {
    fg = "#8a8a8a"
  },
  TroubleText = {
    fg = "#e6e6e6"
  },
  Type = {},
  Typedef = {
    fg = "#62d8f1"
  },
  Underlined = {
    underline = true
  },
  UndoTreeBranch = {
    fg = "#ff9700"
  },
  UndoTreeCurrent = {
    bg = "#4b4b4b",
    fg = "#fc1a70"
  },
  UndoTreeHead = {
    bold = true,
    fg = "#62d8f1"
  },
  UndoTreeHelp = "Normal",
  UndoTreeHelpKey = {
    fg = "#af87ff"
  },
  UndoTreeHelpTitle = {
    fg = "#fc1a70"
  },
  UndoTreeNext = {
    fg = "#bcbcbc"
  },
  UndoTreeNode = {
    fg = "#a4e400"
  },
  UndoTreeSavedBig = {
    bold = true,
    fg = "#fc1a70"
  },
  UndoTreeSavedSmall = {
    fg = "#ffffff"
  },
  UndoTreeSeq = "Comment",
  UndoTreeTimeStamp = "UndoTreeBranch",
  VertSplit = {
    fg = "#62d8f1"
  },
  VimwikiCellSeparator = "Keyword",
  VimwikiCode = {
    fg = "#af87ff"
  },
  VimwikiHR = {
    fg = "#fc1a70"
  },
  VimwikiHeader1 = "Title",
  VimwikiHeader2 = "Title",
  VimwikiHeader3 = "Title",
  VimwikiHeader4 = "Title",
  VimwikiHeader5 = "Title",
  VimwikiHeader6 = "Title",
  VimwikiHeaderChar = {
    fg = "#fc1a70"
  },
  VimwikiLink = {
    fg = "#62d8f1"
  },
  VimwikiLinkChar = "Keyword",
  VimwikiList = "Keyword",
  VimwikiPre = {
    fg = "#8a8a8a"
  },
  VimwikiTag = {
    fg = "#0087ff"
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
  WhichKeyBorder = "WhichKeyFloat",
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
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    fg = "#62d8f1"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#e6f3ff",
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
  lCursor = {
    bg = "#62d8f1",
    fg = "#2b2b2b"
  },
  netrwClassify = {
    fg = "#fc1a70"
  },
  netrwCmdNote = {
    fg = "#e6e6e6"
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
  netrwLink = "netrwClassify",
  netrwList = "netrwDir",
  netrwMarkFile = {
    bg = "#ff9700",
    bold = true,
    fg = "#000001"
  },
  netrwPlain = "netrwCmdNote",
  netrwQuickHelp = {
    fg = "#e6e6e6",
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