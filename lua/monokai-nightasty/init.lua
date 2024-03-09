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

    -- HACK: Add back the removed Treesitter header markers. Use this workaround
    -- until they add something similar (if so)
    if opts and opts.markdown_header_marks == true then
      require("monokai-nightasty.extras.ts_markdown").set_headers_marks()
    end
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
