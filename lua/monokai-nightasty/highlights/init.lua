local utils = require("monokai-nightasty.utils")

-- local me = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h")

local M = {}

M.implemented_plugins = {
  ["aerial.nvim"] = "aerial",
  ["bufferline.nvim"] = "bufferline",
  ["dashboard-nvim"] = "dashboard",
  ["gitsigns.nvim"] = "gitsigns",
  ["headlines.nvim"] = "headlines",
  ["indent-blankline.nvim"] = "indent-blankline",
  ["mini.indentscope"] = "mini_indentscope",
  ["mini.hipatterns"] = "mini_hipatterns",
  ["justinmk/dirvish.vim"] = "dirvish",
  ["lazy.nvim"] = "lazy",
  ["neo-tree.nvim"] = "neo-tree",
  ["noice.nvim"] = "noice",
  ["nvim-cmp"] = "cmp",
  ["nvim-dap-ui"] = "dapui",
  ["nvim-navic"] = "navic",
  ["nvim-notify"] = "notify",
  ["nvim-tree.lua"] = "nvim-tree",
  ["nvim-treesitter-context"] = "treesitter-context",
  ["rainbow-delimiters.nvim"] = "rainbow",
  ["telescope.nvim"] = "telescope",
  ["todo-comments.nvim"] = "todo-comments",
  ["which-key.nvim"] = "which-key",

  -- Not implemented
  -- ["ale"]                           = "ale",
  -- ["alpha-nvim"]                    = "alpha",
  -- ["barbar.nvim"]                   = "barbar",
  -- ["flash.nvim"]                    = "flash",
  -- ["fzf-lua"]                       = "fzf",
  -- ["grug-far.nvim"]                 = "grug-far",
  -- ["hop.nvim"]                      = "hop",
  -- ["leap.nvim"]                     = "leap",
  -- ["lspsaga.nvim"]                  = "lspsaga",
  -- ["neogit"]                        = "neogit",
  -- ["neotest"]                       = "neotest",
  -- ["nvim-scrollbar"]                = "scrollbar",
  -- ["nvim-tree.lua"]                 = "nvim-tree",
  -- ["octo.nvim"]                     = "octo",
  -- ["trouble.nvim"]                  = "trouble",
  -- ["vim-gitgutter"]                 = "gitgutter",
  -- ["vim-glyph-palette"]             = "glyph-palette",
  -- ["vim-illuminate"]                = "illuminate",
  -- ["vim-sneak"]                     = "sneak",
  -- ["vimwiki"]                       = "vimwiki",
  -- ["yanky.nvim"]                    = "yanky"
}

---@param colors ColorScheme
---@param opts monokai.Config
function M.get(hlgroup, colors, opts)
  ---@type {get: monokai.HighlightsFn, url: string}
  local module = utils.mod("monokai-nightasty.highlights." .. hlgroup)
  return module.get(colors, opts)
end

---@param colors ColorScheme
---@param opts monokai.Config
function M.setup(colors, opts)
  local cache, inputs
  if opts.cache then
    cache = utils.cache.read(opts.style)

    if not M.version then
      M.version = utils.get_version()
    end

    local term_colors = opts.terminal_colors
    if type(term_colors) == "function" then
      ---@diagnostic disable: cast-local-type
      term_colors = string.dump(term_colors)
    end

    inputs = {
      version = M.version,
      opts = {
        auto_enable_plugins = opts.auto_enable_plugins,
        color_headers = opts.color_headers,
        dark_style_background = opts.dark_style_background,
        dim_inactive = opts.dim_inactive,
        hl_styles = opts.hl_styles,
        light_style_background = opts.light_style_background,
        lualine_bold = opts.lualine_bold,
        lualine_style = opts.lualine_style,
        markdown_header_marks = opts.markdown_header_marks,
        on_colors = string.dump(opts.on_colors),
        plugins = opts.plugins,
        terminal_colors = term_colors,
      },
    }
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

  local ret
  if opts.cache then
    local style_modules = vim.tbl_keys(enabled_hlgroups)
    table.sort(style_modules)
    inputs.style_modules = style_modules

    ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.hlgroups or nil
  end

  if not ret then
    ret = {}
    -- Build full highlights
    for group_name in pairs(enabled_hlgroups) do
      local highlights = M.get(group_name, colors, opts)
      for hl_name, hl_settings in pairs(highlights) do
        ret[hl_name] = utils.resolve_style_settings(hl_settings)
      end
    end
    if opts.cache then
      utils.cache.write(opts.style, { hlgroups = ret, inputs = inputs })
    end
  end

  -- Apply user configs
  opts.on_highlights(ret, colors)

  return ret, enabled_hlgroups
end

return M
