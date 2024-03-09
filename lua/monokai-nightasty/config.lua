local M = {}

---@class Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: Highlights, colors: ColorScheme)
---@field transparent boolean?
local defaults = {
  dark_style_background = "default", -- default, dark, transparent, #color
  light_style_background = "default", -- default, dark, transparent, #color
  terminal_colors = true, -- Set the colors used when opening a `:terminal`
  color_headers = false, -- Enable header colors for each header level (h1, h2, etc.)
  hl_styles = {
    -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = false },
    functions = {},
    variables = {},
    -- Background styles for sidebars (panels) and floating windows:
    floats = "default", -- default, dark, transparent
    sidebars = "default", -- default, dark, transparent
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`

  hide_inactive_statusline = false, -- Hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = true, -- Lualine headers will be bold or regular.
  lualine_style = "default", -- "dark", "light" or "default" (Follows dark/light style)
  markdown_header_marks = false, -- Add headers marks highlights (the `#` character) to Treesitter highlight query

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
}

---@type Config
---@diagnostic disable-next-line: missing-fields
M.options = M.options or {}

---@param options Config?
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

---@param options Config?
function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

function M.is_light()
  return vim.o.background == "light"
end

M.setup()

return M
