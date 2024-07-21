local M = {}

-- Kind plugins
-- local kind_plugins = {
--   "Aerial%sIcon",
--   "CmpItemKind%s",
--   "NavicIcons%s",
--   "NoiceCompletionItemKind%s",
-- }

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
  -- FIX: target hl should be defined somewhere
  Interface = "KindParameter", -- "@lsp.type.interface",
  Key = "@variable.member",
  Keyword = "@keyword",
  Method = "@function.method",
  Module = "Special",
  -- FIX: target hl should be defined somewhere
  Namespace = "KindText",
  Null = "@constant.builtin",
  Number = "@number",
  Object = "@constant",
  Operator = "Operator",
  Package = "@module",
  Property = "@property",
  Reference = "@markup.link.url", -- @markup.link
  -- FIX: target hl should be defined somewhere
  Snippet = "KindConceal", -- Conceal
  String = "@string",
  Struct = "Structure", -- "@lsp.type.struct",
  Text = "@markup",
  -- FIX: target hl should be defined somewhere
  TypeParameter = "KindParameter",
  Unit = "Structure",
  -- FIX: target hl should be defined somewhere
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
  -- local references = {
  --   KindConceal = { fg = c.blue_alt },
  --   KindParameter = { fg = c.orange },
  --   KindText = { fg = c.fg },
  -- }

  return M.kinds()
end

return M
