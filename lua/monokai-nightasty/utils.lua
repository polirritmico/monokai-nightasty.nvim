local M = {}

local me = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h")

------------
-- Colors --
------------

-- Default values
M.bg = "#2b2b2b" -- charcoal_medium
M.fg = "#ffffff" -- white
M.brightness = 0.3

function M.is_light()
  return vim.o.background == "light"
end

---@param color string
local function hex_to_rgb(color)
  color = string.lower(color)
  return {
    tonumber(color:sub(2, 3), 16),
    tonumber(color:sub(4, 5), 16),
    tonumber(color:sub(6, 7), 16),
  }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = hex_to_rgb(background)
  local fg = hex_to_rgb(foreground)

  local blend_channel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format(
    "#%02x%02x%02x",
    blend_channel(1),
    blend_channel(2),
    blend_channel(3)
  )
end

function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, amount)
end

function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, amount)
end

---Replace all `${color}` marks with the theme colors values (`#ffffff`)
---@param str string original file string
---@param table table key value pairs to replace in the string
function M.interpolate_colors(str, table)
  -- TODO: REFACTOR
  return (
    str:gsub("($%b{})", function(w)
      return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
    end)
  )
end

-----------
-- Files --
-----------

function M.overwrite(file, data)
  local fd = assert(io.open(file, "w+"))
  fd:write(data)
  fd:close()
end

function M.mk_parent_dir(path)
  local parent_path = vim.fs.dirname(path)
  if vim.fn.isdirectory(parent_path) == 0 then
    vim.fn.mkdir(parent_path, "p") -- p: Intermediate dirs are created as necessary
  end
end

function M.write_file(data, filename, verbose)
  if verbose then
    print("[write] " .. filename)
  end
  local file = assert(io.open(filename, "w"))
  file:write(data)
  file:close()
end

function M.read_file(file)
  local fd = assert(io.open(file, "r"))
  ---@type string
  local data = fd:read("*a")
  fd:close()
  return data
end

-------------------
-- Miscellaneous --
-------------------

---Return the loaded module. If the module is not loaded, load it (loadfile)
---and then return it.
---@param modname string Module name
---@return table
function M.mod(modname)
  if package.loaded[modname] then
    return package.loaded[modname]
  end

  -- local path = string.format("%s/%s.lua", me, modname:gsub("%.", "/"))
  local path = me .. "/" .. modname:gsub("%.", "/") .. ".lua"
  local module = loadfile(path)()
  package.loaded[modname] = module
  return module
end

---@param hlgroup monokai.Highlights
---@return table<string, vim.api.keyset.highlight>
function M.resolve(hlgroup)
  for _, hl in pairs(hlgroup) do
    if type(hl.style) == "table" then
      for k, v in pairs(hl.style) do
        hl[k] = v
      end
      hl.style = nil
    end
  end
  return hlgroup
end

---Get the commit hash from the repository.
function M.get_version()
  local repo = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h:h") .. "/.git/"
  local head_content = M.read_file(repo .. "HEAD"):match("ref: (.*)\n")
  if head_content:match("/") then
    local commit = M.read_file(repo .. head_content):match("(%w+)")
    return commit:sub(1, 8)
  else
    return head_content:sub(1, 8)
  end
end

--------------
-- Autocmds --
--------------

---@param config monokai.Config
---@param colors ColorScheme
function M.autocmds(config, colors)
  local group = vim.api.nvim_create_augroup("MonokaiNightasty", { clear = true })

  -- vim.api.nvim_create_autocmd("ColorSchemePre", {
  --   group = group,
  --   callback = function()
  --     vim.api.nvim_del_augroup_by_id(group)
  --   end,
  -- })

  -- local function set_whl()
  --   local win = vim.api.nvim_get_current_win()
  --   local whl = vim.split(vim.wo[win].winhighlight, ",")
  --   vim.list_extend(whl, { "Normal:NormalSB", "SignColumn:SignColumnSB" })
  --   whl = vim.tbl_filter(function(hl)
  --     return hl ~= ""
  --   end, whl)
  --   vim.opt_local.winhighlight = table.concat(whl, ",")
  -- end
  --
  -- vim.api.nvim_create_autocmd("FileType", {
  --   group = group,
  --   pattern = table.concat(config.sidebars, ","),
  --   callback = set_whl,
  -- })
  --
  -- if vim.tbl_contains(config.sidebars, "terminal") then
  --   vim.api.nvim_create_autocmd("TermOpen", {
  --     group = group,
  --     callback = set_whl,
  --   })
  -- end

  if config.terminal_colors then
    local opt_type = type(config.terminal_colors)
    local term_hl = opt_type == "table" and config.terminal_colors
      or opt_type == "function" and config.terminal_colors(colors)
      or {}

    ---@cast term_hl table
    if next(term_hl) ~= nil then
      vim.api.nvim_create_autocmd("TermOpen", {
        group = group,
        callback = function()
          for name, hl in pairs(term_hl) do
            local new_hl = "MonokaiNightastyTerminal" .. name
            vim.api.nvim_set_hl(0, new_hl, hl)
            vim.cmd.setlocal(string.format("winhighlight=%s:%s", name, new_hl))
          end
        end,
      })
    end
  end
end

-----------
-- Cache --
-----------

M.cache = {}

function M.cache.file(filename)
  local base_path = vim.fn.stdpath("cache") .. "/monokai-nightasty/dump-"
  return base_path .. filename .. ".json"
end

---@param filename string
function M.cache.read(filename)
  ---@type boolean, monokai.Cache
  local ok, ret = pcall(function()
    local file = M.cache.file(filename)
    local data = M.read_file(file)
    return vim.json.decode(data, { luanil = { object = true, array = true } })
  end)
  return ok and ret or nil
end

---@param filename string
---@param data monokai.Cache
function M.cache.write(filename, data)
  local file = M.cache.file(filename)
  pcall(M.write_file, vim.json.encode(data), file)
end

function M.cache.clear()
  for _, theme in ipairs({ "dark", "light" }) do
    (vim.uv or vim.loop).fs_unlink(M.cache.file(theme))
  end
end

return M

-- ---@param theme Theme
-- function M.load(theme)
--   -- only needed to clear when not the default colorscheme
--   if vim.g.colors_name then
--     vim.cmd("hi clear")
--   end
--
--   vim.o.termguicolors = true
--   vim.g.colors_name = "monokai-nightasty"
--
--   M.syntax(theme.highlights)
--
--   if theme.config.terminal_colors ~= false then
--     M.terminal(theme.colors)
--   end
--
--   M.autocmds(theme.config, theme.colors)
--
--   vim.defer_fn(function()
--     M.syntax(theme.defer)
--   end, 100)
-- end
