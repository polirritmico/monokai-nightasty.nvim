local M = {}

M.me = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h")

------------
-- Colors --
------------

-- Default values
M.bg = "#2b2b2b" -- charcoal_medium
M.fg = "#ffffff" -- white
M.brightness = 0.3

---@param color string
---@return [integer, integer, integer]
function M.hex_to_rgb(color)
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
---@return string -- Color hex value
function M.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = M.hex_to_rgb(background)
  local fg = M.hex_to_rgb(foreground)

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

---@param hex string Color hex value
---@param amount number From 0 to 1. 1 is the same hex color, 0 the bg.
---@param bg? string Optional bg. `colors.bg` by default
function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, amount)
end

---@param hex string Color hex value
---@param amount number From 0 to 1. 1 is the same hex color, 0 the fg.
---@param fg? string Optional fg. `colors.fg` by default
function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, amount)
end

---Generate kind highlight groups based on the pattern.
---For the base link definitions check highlights.kinds
---@param hl monokai.Highlights plugin highlights to add the kind groups
---@param pattern string pattern for the highlight group names
---@return monokai.Highlights -- highlight groups with the expanded kinds
function M.generate_kinds(hl, pattern)
  hl = hl or {}
  local base_kinds = require("monokai-nightasty.highlights.kinds").base_kinds
  for kind, link in pairs(base_kinds) do
    local base = "LspKind" .. kind
    if pattern then
      hl[pattern:format(kind)] = base
    else
      hl[base] = link
    end
  end
  return hl
end

---Get the hex color value from the given palette
---@param palette string
---@param color string
---@return string?
function M.import_color(palette, color)
  local colors = M.mod("monokai-nightasty.colors." .. palette)
  if colors and colors[color] then
    return colors[color]
  end
  local msg = "Error: Color '%s' not found in '%s' palette"
  vim.notify(string.format(msg, color, palette), vim.log.levels.WARN)
end

---Replace all `${color}` marks with the theme colors values (`<hex-color>`)
---@param str string original file string
---@param tbl table key value pairs to replace in the string
function M.template(str, tbl)
  return (
    str:gsub("($%b{})", function(w)
      return vim.tbl_get(tbl, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
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

function M.mkdir_parent(path)
  local parent_path = vim.fs.dirname(path)
  if vim.fn.isdirectory(parent_path) == 0 then
    -- "p" to create intermediate dirs as necessary
    vim.fn.mkdir(parent_path, "p")
  end
end

---@param data string
---@param filename string
---@param verbose? boolean
function M.write_file(data, filename, verbose)
  if verbose then
    print("[write] " .. filename)
  end
  local file = assert(io.open(filename, "w"))
  file:write(data)
  file:close()
end

---@param filepath string
---@param instruction? string Defaults to `*a`
function M.read_file(filepath, instruction)
  local fd = assert(io.open(filepath, "r"))
  ---@type string
  local data = fd:read(instruction or "*a")
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
  local path = M.me .. "/" .. modname:gsub("%.", "/") .. ".lua"
  local module = assert(loadfile(path), "can't loadfile: " .. path)()
  package.loaded[modname] = module
  return module
end

---@param hl monokai.Highlights|string
---@return monokai.Highlight|string
function M.resolve_style_settings(hl)
  if type(hl.style) == "table" then
    -- stylua: ignore
    for k, v in pairs(hl.style --[[@as table]]) do
      hl[k] = v
    end
    hl.style = nil
  end
  return hl
end

---File generation (extras or docs) should be executed from the local
---development clone of the repository, rather than from the cloned repository
---of the lazy.nvim plugin installation, as the latter is likely to contain
---the previous release code and not the actual changes that need to be updated.
---This function performs that check.
---@return boolean
function M.running_from_dev()
  local lazy_root_path = require("lazy.core.config").options.root
  local monokai_path = require("monokai-nightasty.utils").me

  return monokai_path:match(lazy_root_path) == nil
end

-----------
-- Cache --
-----------

M.cache = {}

function M.cache.file(filename)
  local base_path = vim.fn.stdpath("cache") .. "/monokai-nightasty/dump-"
  return base_path .. filename .. ".json"
end

function M.cache.clear()
  for _, theme in ipairs({ "dark", "light" }) do
    (vim.uv or vim.loop).fs_unlink(M.cache.file(theme))
  end
end

---@param filename string
---@return monokai.Cache?
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
  local filepath = M.cache.file(filename)
  M.mkdir_parent(filepath)
  pcall(M.write_file, vim.json.encode(data), filepath)
end

return M
