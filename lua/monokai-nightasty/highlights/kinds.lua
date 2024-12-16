local M = {}

local kinds_links = {
  Array = "@punctuation.bracket",
  Boolean = "Boolean",
  Class = "@type.builtin", -- "StorageClass" "@type",
  Color = "Special",
  Constant = "@constant",
  Constructor = "@constructor",
  Enum = "@lsp.type.enum",
  EnumMember = "Structure", -- "@lsp.type.enumMember",
  Event = "Special",
  Field = "@variable.member",
  File = "Normal",
  Folder = "Directory",
  Function = "@function",
  Interface = "KindParameter", -- "@lsp.type.interface",
  Key = "@variable.member",
  Keyword = "@keyword",
  Method = "@function.method",
  Module = "Special",
  Namespace = "KindText",
  Null = "@constant.builtin",
  Number = "@number",
  Object = "@constant",
  Operator = "Operator",
  Package = "@module",
  Property = "@property",
  Reference = "@markup.link.url", -- @markup.link
  Snippet = "KindConceal", -- Conceal
  String = "@string",
  Struct = "Structure", -- "@lsp.type.struct",
  Text = "@markup",
  TypeParameter = "KindParameter",
  Unit = "Structure",
  Value = "KindParameter",
  Variable = "@variable",
}

---@param hl? monokai.Highlights
---@param pattern? string
function M.kinds(hl, pattern)
  hl = hl or {}
  for kind, link in pairs(kinds_links) do
    local base = "LspKind" .. kind
    if pattern then
      hl[pattern:format(kind)] = base
    else
      hl[base] = link
    end
  end
  return hl
end

---@type monokai.HighlightsFn
function M.get()
  return M.kinds()
end

return M
