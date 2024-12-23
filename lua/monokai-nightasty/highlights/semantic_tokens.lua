local utils = require("monokai-nightasty.utils")
local M = {}

M.url = "https://github.com/"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    ["@lsp.type.boolean"] = "Boolean",
    ["@lsp.type.builtinType"] = "@type.builtin",
    ["@lsp.type.class.markdown"] = { fg = c.yellow }, -- Check mark inside checklist ([x])
    ["@lsp.type.comment"] = "@comment",
    ["@lsp.type.decorator"] = "@attribute", -- test
    ["@lsp.type.deriveHelper"] = "@attribute",
    ["@lsp.type.enum"] = "@type",
    ["@lsp.type.enumMember"] = "@constant",
    ["@lsp.type.escapeSequence"] = "@string.escape",
    ["@lsp.type.formatSpecifier"] = "@markup.list",
    ["@lsp.type.generic"] = "@variable",
    ["@lsp.type.interface"] = { fg = utils.lighten(c.blue, 0.6) },
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
    ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
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
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.blue_alt },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = c.blue_alt },
    ["@lsp.typemod.variable.callable"] = "@function",
    ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
    ["@lsp.typemod.variable.injected"] = "@variable",
    ["@lsp.typemod.variable.static"] = "@constant",

    -- Language customization
    ["@function.builtin.bash"] = { fg = c.blue },
    ["@type.qualifier.c_sharp"] = { fg = c.orange, italic = true },
    ["@constructor.lua"] = { fg = c.magenta },
    ["@lsp.typemod.variable.global.lua"] = "@variable.builtin",
    -- ["@lsp.type.namespace.python"] = "@variable",
    ["dosbatchError"] = { fg = c.red },
    ["@property.ini"] = { fg = c.orange },
  }
end

return M
