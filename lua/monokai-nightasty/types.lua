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
---@field alt? string[]

---@alias monokai.LualineStyleConfig
---| "default" Follows current style colors (dark or light)
---| "dark" Only dark style colors
---| "light" Only light style colors

---@alias monokai.BackgroundConfig
---| "default" Default background color
---| "dark" Darker version of the default color
---| "transparent" Transparent color

---Highlight styles to be applied to selected syntax groups
---@class monokai.HighlightStylesConfig
---@field comments? monokai.Highlight
---@field keywords? monokai.Highlight
---@field functions? monokai.Highlight
---@field variables? monokai.Highlight
---@field floats? monokai.BackgroundConfig Used by plugins with float windows
---@field sidebars? monokai.BackgroundConfig USed by plugins with sidebar windows

---@class monokai.UserConfig
---@field auto_enable_plugins? boolean Automatically enable supported plugins through lazy.nvim
---@field cache? boolean Enables/Disable the cache
---@field color_headers? boolean Enable header colors for each header level (h1, h2, etc.)
---@field dark_style_background? monokai.BackgroundConfig | string Also supports hex color ("#RRGGBB")
---@field dim_inactive? boolean dims inactive windows
---@field hl_styles? monokai.HighlightStylesConfig
---@field light_style_background? monokai.BackgroundConfig | string Also supports hex color ("#RRGGBB")
---@field lualine_bold? boolean Lualine headers will be bold or regular
---@field lualine_style? monokai.LualineStyleConfig Style setting for the Lualine status bar
---@field markdown_header_marks? boolean Add headers marks highlights to Treesitter highlight query (the `#` character)
---@field on_colors? fun(colors: ColorScheme)
---@field on_highlights? fun(highlights: monokai.Highlights, colors: ColorScheme)
---@field plugins? table<string, boolean> List of manually enabled/disabled plugins.
---@field terminal_colors? boolean|table|fun(colors: ColorScheme):table
