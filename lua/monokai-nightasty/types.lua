---@class monokai.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias monokai.Highlights table<string, monokai.Highlight|string>

---@alias monokai.HighlightsFn fun(colors.Colorscheme, opts:monokai.Config):monokai.Highlights

---@class monokai.Cache
---@field hlgroups monokai.Highlights
---@field inputs table
