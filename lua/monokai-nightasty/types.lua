---@class monokai.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias monokai.Highlights table<string, monokai.Highlight|string>

---@alias monokai.HighlightsFn fun(colors:ColorScheme, opts:monokai.Config):monokai.Highlights

---@class monokai.Cache
---@field colors ColorScheme
---@field hlgroups monokai.Highlights
---@field inputs table

---@class monokai.ExtraInfo
---@field name string
---@field ext string
---@field label string
---@field both_styles boolean
---@field url string
