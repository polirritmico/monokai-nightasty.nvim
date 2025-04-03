local M = {}

M.version = "3206b571"

---@class monokai.Config
---@field dark_style_background monokai.BackgroundConfig default, dark, transparent, #RRGGBB
---@field light_style_background monokai.BackgroundConfig default, dark, transparent, #RRGGBB
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: monokai.Highlights, colors: ColorScheme)
---@field hl_styles monokai.HighlightStylesConfig Styles to be applied to selected syntax groups
---@field color_headers boolean Enable header colors for each header level (h1, h2, etc.)
---@field dim_inactive boolean dims inactive windows
---@field lualine_bold boolean Lualine headers will be bold or regular
---@field lualine_style monokai.LualineStyleConfig Possible values: "dark", "light" or "default" (default follows dark/light style)
---@field markdown_header_marks boolean Add headers marks highlights (the `#` character) to Treesitter highlight query
---@field terminal_colors boolean|table|fun(colors: ColorScheme):table
---@field auto_enable_plugins boolean Automatically enable supported plugins through lazy.nvim
---@field plugins table<string, boolean> List of manually enabled/disabled plugins.
---@field cache boolean Enables/Disable the cache
---@field transparent? boolean Used by highlights to set transparent bg
---@field style? string Set the dark/light theme at startup
M.defaults = {
  dark_style_background = "default", -- default, dark, transparent, #RRGGBB
  light_style_background = "default", -- default, dark, transparent, #RRGGBB
  hl_styles = {
    -- Custom styles for this groups: (See `:help nvim_set_hl`, Parameters, {val} for supported keys)
    comments = { italic = true },
    keywords = { italic = false },
    functions = {},
    variables = {},
    -- Background styles for floating windows and sidebars (panels):
    floats = "default", -- default, dark, transparent
    sidebars = "default", -- default, dark, transparent
  },

  color_headers = false, -- Enable header colors for each header level (h1, h2, etc.)
  dim_inactive = false, -- dims inactive windows
  lualine_bold = true, -- Lualine headers will be bold or regular
  lualine_style = "default", -- "dark", "light" or "default" (default follows dark/light style)
  markdown_header_marks = false, -- Add headers marks highlights (the `#` character) to Treesitter highlight query

  -- Set the colors for terminal-mode (`:h terminal-config`). `false` to disable it.
  -- Pass a table with `terminal_color_x` values: `{ terminal_color_8 = "#e6e6e6" }`.
  -- Also accepts a function:
  -- ```lua
  -- function(colors) return { fg = colors.fg_dark, terminal_color_4 = "#ff00ff" } end
  -- ```
  -- > Use the `fg` key to apply colors to the normal text.
  terminal_colors = true,

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with the Monokai ColorScheme table.
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with the Monokai Highlights and ColorScheme table.
  ---@param highlights monokai.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  -- When `true` the theme will be cached for better performance.
  cache = true,

  --- Automatically enable highlights for supported plugins in the lazy.nvim config.
  auto_enable_plugins = true,

  --- List of manually enabled/disabled plugins.
  --- Check the supported plugins here:
  ---   https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights
  ---@type table<string, boolean>
  plugins = {
    -- Use the ["<repository name>"]. For example:
    -- ["telescope.nvim"] = true,

    -- `all`: enable or disable all plugins. By default if lazy.nvim is not loaded enable all the plugins
    all = package.loaded.lazy == nil,
  },
}

---@type monokai.Config
M.options = nil

---@param options? monokai.UserConfig|monokai.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? monokai.Config|monokai.UserConfig
function M.extend(opts)
  ---@cast opts monokai.Config
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
