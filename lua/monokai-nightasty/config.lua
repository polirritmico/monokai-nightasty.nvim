local M = {}

---@class monokai.Config
---@field dark_style_background string default, dark, transparent, #color
---@field light_style_background string default, dark, transparent, #color
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: monokai.Highlights, colors: ColorScheme)
---@field hl_styles table Styles to be applied to different syntax groups
---@field terminal_colors? boolean|table|fun(colors: ColorScheme):table
---@field transparent? boolean
---@field style? string
---@field force_style? string
M.defaults = {
  dark_style_background = "default", -- default, dark, transparent, #color
  light_style_background = "default", -- default, dark, transparent, #color
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
  color_headers = false, -- Enable header colors for each header level (h1, h2, etc.)
  dim_inactive = false, -- dims inactive windows
  lualine_bold = true, -- Lualine headers will be bold or regular.
  lualine_style = "default", -- "dark", "light" or "default" (default follows dark/light style)
  markdown_header_marks = false, -- Add headers marks highlights (the `#` character) to Treesitter highlight query
  cache = true, -- When set to true, the theme will be cached for better performance

  -- FIX:
  -- Set the colors for terminal-mode. Could be a boolean, a table or a function that
  -- returns a table. Could be `true` to enable defaults, a function like
  -- `function(colors) return { Normal = { fg = colors.fg_dark } }` or directly a
  -- table like `{ Normal = { fg = "#e6e6e6" } }`.
  terminal_colors = true,

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with the Monokai ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with the Monokai Highlights and ColorScheme table
  ---@param highlights monokai.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  auto_plugins = true, -- Use lazy to automatically enable/disable plugins

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    all = package.loaded.lazy == nil,
    auto = true,
    -- telescope = true,
    -- telescope = { enabled = true },
  },
}

---@type monokai.Config
M.options = nil

---@param options monokai.Config?
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts monokai.Config?
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
