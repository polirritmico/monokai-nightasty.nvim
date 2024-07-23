local config = require("monokai-nightasty.config")
local utils = require("monokai-nightasty.utils")

local me = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h")

local M = {}

M.implemented_plugins = {
  -- ["aerial.nvim"] = "aerial",
  -- ["bufferline.nvim"] = "bufferline",
  ["dashboard-nvim"] = "dashboard",
  ["gitsigns.nvim"] = "gitsigns",
  -- ["headlines.nvim"] = "headlines",
  -- ["indent-blankline.nvim"] = "indent-blankline",
  -- ["justinmk/dirvish.vim"] = "dirvish",
  ["lazy.nvim"] = "lazy",
  -- ["neo-tree.nvim"] = "neo-tree",
  -- ["noice.nvim"] = "noice",
  ["nvim-cmp"] = "cmp",
  ["nvim-dap-ui"] = "dapui",
  -- ["nvim-navic"] = "navic",
  -- ["nvim-notify"] = "notify",
  -- ["nvim-tree.lua"] = "nvim-tree",
  -- ["nvim-treesitter-context"] = "treesitter-context",
  -- ["rainbow-delimiters.nvim"] = "rainbow",
  -- ["telescope.nvim"] = "telescope",
  -- ["todo-comments.nvim"] = "todo-comments",
  -- ["which-key.nvim"] = "which-key",

  -- Not implemented
  -- ["ale"]                           = "ale",
  -- ["alpha-nvim"]                    = "alpha",
  -- ["barbar.nvim"]                   = "barbar",
  -- ["flash.nvim"]                    = "flash",
  -- ["fzf-lua"]                       = "fzf",
  -- ["grug-far.nvim"]                 = "grug-far",
  -- ["hop.nvim"]                      = "hop",
  -- ["indentmini.nvim"]               = "indentmini",
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
  -- TODO: Default groups, maybe move to config?
  local enabled_hlgroups = {
    base = true,
    builtins = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  if opts.plugins.all then
    for _, hlgroup in pairs(M.implemented_plugins) do
      enabled_hlgroups[hlgroup] = true
    end
  elseif opts.plugins.auto and package.loaded.lazy then
    local lazy_plugins = require("lazy.core.config").plugins
    for plugin, hlgroup in pairs(M.implemented_plugins) do
      if lazy_plugins[plugin] then
        enabled_hlgroups[hlgroup] = true
      end
    end
    -- NOTE: mini-plugins could also be inside mini.nvim
  end

  -- Apply user configuration
  -- TODO: REFACTOR
  for plugin, hlgroup in pairs(M.implemented_plugins) do
    local use = opts.plugins[hlgroup]
    use = use == nil and opts.plugins[plugin] or use
    if use ~= nil then
      if type(use) == "table" then
        use = use.enabled
      end
      enabled_hlgroups[hlgroup] = use or nil
    end
  end

  local plugin_names = vim.tbl_keys(enabled_hlgroups)
  table.sort(plugin_names) -- sorting to check the cache

  local theme = opts.style or "dark" -- utils.is_light() and "light" or "dark"
  local cache = opts.cache and utils.cache.read(theme)

  local inputs = {
    colors = colors,
    plugin_names = plugin_names,
    version = utils.get_version(),
    opts = { styles = theme, dim_inactive = opts.dim_inactive },
  }

  local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.hlgroups or nil

  if not ret then
    ret = {}
    -- Build full highlights
    for group_name in pairs(enabled_hlgroups) do
      local highlights = M.get(group_name, colors, opts)
      for hl_name, hl_settings in pairs(highlights) do
        ret[hl_name] = hl_settings
      end
    end
    utils.resolve(ret)
    if opts.cache then
      utils.cache.write(theme, { hlgroups = ret, inputs = inputs })
    end
  end

  -- Apply user configs
  opts.on_highlights(ret, colors)

  return ret, enabled_hlgroups
end

return M
