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

---@class monokai.UserConfig
---@field auto_enable_plugins? boolean Automatically enable supported plugins through lazy.nvim
---@field cache? boolean Enables/Disable the cache
---@field color_headers? boolean Enable header colors for each header level (h1, h2, etc.)
---@field dark_style_background? string default, dark, transparent, #color
---@field dim_inactive? boolean dims inactive windows
---@field hl_styles? table Styles to be applied to selected syntax groups (comments, keywords, functions, variables, floats and sidebars)
---@field light_style_background? string default, dark, transparent, #color
---@field lualine_bold? boolean Lualine headers will be bold or regular
---@field lualine_style? string Possible values: "dark", "light" or "default" (default follows dark/light style)
---@field markdown_header_marks? boolean Add headers marks highlights (the `#` character) to Treesitter highlight query
---@field on_colors? fun(colors: ColorScheme)
---@field on_highlights? fun(highlights: monokai.Highlights, colors: ColorScheme)
---@field plugins? table<string, boolean> List of manually enabled/disabled plugins.
---@field terminal_colors? boolean|table|fun(colors: ColorScheme):table
