local util = require("monokai-nightasty.util")
local theme = require("monokai-nightasty.theme")
local config = require("monokai-nightasty.config")

local M = {}

M.loaded = false

---@param opts Config|nil
function M.load(opts)
  -- Set MonokaiToggleLight
  if not M.loaded then
    vim.cmd("command! MonokaiToggleLight lua MonokaiToggleLight()")
    M.loaded = true
  end

  if opts then
    require("monokai-nightasty.config").extend(opts)
  end
  util.load(theme.setup())
end

---Toggle `vim.o.background` value to `dark` or `light`.
function MonokaiToggleLight()
  vim.o.background = (vim.o.background == "dark") and "light" or "dark"
end

M.toggle = MonokaiToggleLight

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
