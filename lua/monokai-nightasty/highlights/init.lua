local utils = require("monokai-nightasty.utils")
local config = require("monokai-nightasty.config")

local M = {}

M.implemented_plugins = {
  ["aerial.nvim"] = "aerial",
  ["ale"] = "ale",
  ["alpha-nvim"] = "alpha",
  ["barbar.nvim"] = "barbar",
  ["blink.cmp"] = "blink",
  ["bufferline.nvim"] = "bufferline",
  ["dashboard-nvim"] = "dashboard",
  ["flash.nvim"] = "flash",
  ["fzf-lua"] = "fzf",
  ["gitsigns.nvim"] = "gitsigns",
  ["headlines.nvim"] = "headlines",
  ["indent-blankline.nvim"] = "indent-blankline",
  ["justinmk/dirvish.vim"] = "dirvish",
  ["lazy.nvim"] = "lazy",
  ["leap.nvim"] = "leap",
  ["lspsaga.nvim"] = "lspsaga",
  ["mini.diff"] = "mini_diff",
  ["mini.hipatterns"] = "mini_hipatterns",
  ["mini.icons"] = "mini_icons",
  ["mini.indentscope"] = "mini_indentscope",
  ["mini.statusline"] = "mini_statusline",
  ["neo-tree.nvim"] = "neo-tree",
  ["neogit"] = "neogit",
  ["neotest"] = "neotest",
  ["noice.nvim"] = "noice",
  ["nvim-cmp"] = "cmp",
  ["nvim-dap-ui"] = "dapui",
  ["nvim-navic"] = "navic",
  ["nvim-notify"] = "notify",
  ["nvim-scrollbar"] = "scrollbar",
  ["nvim-tree.lua"] = "nvim-tree",
  ["nvim-treesitter-context"] = "treesitter-context",
  ["rainbow-delimiters.nvim"] = "rainbow",
  ["render-markdown.nvim"] = "render-markdown",
  ["snacks.nvim"] = "snacks",
  ["telescope.nvim"] = "telescope",
  ["todo-comments.nvim"] = "todo-comments",
  ["trouble.nvim"] = "trouble",
  ["undotree"] = "undotree",
  ["vim-gitgutter"] = "gitgutter",
  ["vim-sneak"] = "sneak",
  ["vimwiki"] = "vimwiki",
  ["which-key.nvim"] = "which-key",
  ["yanky.nvim"] = "yanky",
}

---Generate the highlight groups list from the implemented_plugins and the user
---configuration options.
---@param opts monokai.Config
---@return table<string, boolean>
function M.generate_enabled_hlgroups(opts)
  if M.enabled_hlgroups then
    return M.enabled_hlgroups
  end

  local enabled_hlgroups = {
    base = true,
    builtins = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  -- Add plugins to the enabled_hlgroups and apply user configs
  if opts.plugins.all then
    for plugin_name, plugin_mod in pairs(M.implemented_plugins) do
      enabled_hlgroups[plugin_mod] = opts.plugins[plugin_name] ~= false or nil
    end
  elseif opts.auto_enable_plugins and package.loaded.lazy then
    local lazy_plugins = require("lazy.core.config").plugins
    for plugin_name, plugin_mod in pairs(M.implemented_plugins) do
      if lazy_plugins[plugin_name] then
        enabled_hlgroups[plugin_mod] = opts.plugins[plugin_name] ~= false or nil
      end
    end
    -- NOTE: if mini.nvim then enable all mini modules
    if opts.plugins["mini.nvim"] ~= false and lazy_plugins["mini.nvim"] then
      for _, plugin_mod in pairs(M.implemented_plugins) do
        if plugin_mod:find("^mini_") then
          enabled_hlgroups[plugin_mod] = true
        end
      end
    end
  else
    for plugin_name, enabled in pairs(opts.plugins) do
      if plugin_name ~= "all" then
        enabled_hlgroups[plugin_name] = enabled or nil
      end
    end
  end

  M.enabled_hlgroups = enabled_hlgroups
  return enabled_hlgroups
end

---@param colors ColorScheme
---@param opts monokai.Config
function M.get(hlgroup, colors, opts)
  ---@type {get: monokai.HighlightsFn, url: string}
  local module = utils.mod("monokai-nightasty.highlights." .. hlgroup)
  return module.get(colors, opts)
end

function M.generate_style_modules()
  local style_modules = vim.tbl_keys(M.enabled_hlgroups)
  table.sort(style_modules)
  return style_modules
end

---@param opts monokai.Config
---@return table
function M.generate_inputs(opts)
  M.inputs = {
    version = config.version,
    opts = {
      auto_enable_plugins = opts.auto_enable_plugins,
      color_headers = opts.color_headers,
      dark_style_background = opts.dark_style_background,
      dim_inactive = opts.dim_inactive,
      hl_styles = opts.hl_styles,
      light_style_background = opts.light_style_background,
      lualine_bold = opts.lualine_bold,
      lualine_style = opts.lualine_style,
      on_colors = string.dump(opts.on_colors),
      plugins = opts.plugins,
    },
    style_modules = M.generate_style_modules(),
  }

  return M.inputs
end

---@param colors ColorScheme
---@param opts monokai.Config
function M.setup(colors, opts)
  local enabled_hlgroups = M.generate_enabled_hlgroups(opts)
  local inputs = M.generate_inputs(opts)

  -- Build full highlights
  local ret = {}
  local resolve_style_settings = utils.resolve_style_settings
  for group_name in pairs(enabled_hlgroups) do
    local highlights = M.get(group_name, colors, opts)
    for hl_name, hl_settings in pairs(highlights) do
      ret[hl_name] = resolve_style_settings(hl_settings)
    end
  end

  if opts.cache then
    utils.cache.write(opts.style, { colors = colors, hlgroups = ret, inputs = inputs })
  end

  -- Apply user configs
  opts.on_highlights(ret, colors)

  return ret, enabled_hlgroups
end

return M
