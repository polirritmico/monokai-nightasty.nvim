local M = {}

---Base groups used to generate kind highlights by other plugins
M.base_kinds = {
  Array = "@punctuation.bracket",
  Boolean = "Boolean",
  Class = "@type.builtin",
  Color = "Special",
  Constant = "@constant",
  Constructor = "@constructor",
  Enum = "@lsp.type.enum",
  EnumMember = "@lsp.type.enumMember",
  Event = "Special",
  Field = "@variable.member",
  File = "Normal",
  Folder = "Directory",
  Function = "@function",
  Interface = "@lsp.type.interface",
  Key = "@variable.member",
  Keyword = "@keyword",
  Method = "@function.method",
  Module = "Special",
  Namespace = "@module",
  Null = "@constant.builtin",
  Number = "@number",
  Object = "@constant",
  Operator = "Operator",
  Package = "@module",
  Property = "@property",
  Reference = "@markup.link.url",
  Snippet = "Conceal",
  String = "@string",
  Struct = "Structure",
  Text = "@markup",
  TypeParameter = "@lsp.type.parameter",
  Unit = "Structure",
  Value = "@string",
  Variable = "@variable",
}

---@type monokai.HighlightsFn
function M.get()
  local hl = {}
  for kind, link in pairs(M.base_kinds) do
    hl["LspKind" .. kind] = link
  end
  return hl
end

return M
