local M = {}

-- Default values
M.bg = "#2b2b2b" -- charcoal_medium
M.fg = "#ffffff"
M.brightness = 0.3

---@param c  string
local function hexToRgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = hexToRgb(background)
  local fg = hexToRgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, amount)
end

function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, amount)
end

---@param group string
function M.highlight(group, hl)
  if hl.style then
    if type(hl.style) == "table" then
      hl = vim.tbl_extend("force", hl, hl.style)
    elseif hl.style:lower() ~= "none" then
      -- handle old string style definitions
      for s in string.gmatch(hl.style, "([^,]+)") do
        hl[s] = true
      end
    end
    hl.style = nil
  end
  vim.api.nvim_set_hl(0, group, hl)
end

---@param config Config
function M.autocmds(config)
  local group = vim.api.nvim_create_augroup("monokai-nightasty", { clear = true })

  vim.api.nvim_create_autocmd("ColorSchemePre", {
    group = group,
    callback = function()
      vim.api.nvim_del_augroup_by_id(group)
    end,
  })
  local function set_whl()
    local win = vim.api.nvim_get_current_win()
    local whl = vim.split(vim.wo[win].winhighlight, ",")
    vim.list_extend(whl, { "Normal:NormalSB", "SignColumn:SignColumnSB" })
    whl = vim.tbl_filter(function(hl)
      return hl ~= ""
    end, whl)
    vim.opt_local.winhighlight = table.concat(whl, ",")
  end

  vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = table.concat(config.sidebars, ","),
    callback = set_whl,
  })
  if vim.tbl_contains(config.sidebars, "terminal") then
    vim.api.nvim_create_autocmd("TermOpen", {
      group = group,
      callback = set_whl,
    })
  end
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
  return (
    str:gsub("($%b{})", function(w)
      return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
    end)
  )
end

function M.syntax(syntax)
  for group, colors in pairs(syntax) do
    M.highlight(group, colors)
  end
end

---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta
  vim.g.terminal_color_6 = colors.blue_alt
  vim.g.terminal_color_14 = colors.blue_alt
end

---@param theme Theme
function M.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "monokai-nightasty"

  M.syntax(theme.highlights)

  -- vim.api.nvim_set_hl_ns(M.ns)
  if theme.config.terminal_colors then
    M.terminal(theme.colors)
  end

  M.autocmds(theme.config)

  vim.defer_fn(function()
    M.syntax(theme.defer)
  end, 100)
end

return M
