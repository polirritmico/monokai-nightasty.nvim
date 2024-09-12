local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local bg_current = c.bg_highlight
  local bg_inactive = opts.transparent and c.none or c.bg_sidebar
  local bg_visible = c.bg_status_alt
  local bg_alternate = bg_visible
  local unselected_fg = utils.darken(c.fg, 0.5)

  local dim = {
    orange = c.orange,
    green = c.green,
    magenta = c.magenta,
    error = c.error,
    hint = c.hint,
    info = c.info,
    warning = c.warning,
  }
  for k, v in pairs(dim) do
    dim[k] = utils.darken(v, 0.8)
  end

  return {
    --- Misc
    BufferOffset = { fg = c.grey_light, bg = bg_current }, -- header for a sidebar_filetype (e.g. undotree, neo-tree, etc.)
    BufferTabpages = { fg = c.fg_sidebar, bg = opts.transparent and c.none or bg_alternate }, -- Tab pages indicator at top right corner (tabs not buffers)
    BufferTabpageFill = { fg = c.grey, bg = opts.transparent and c.none or bg_inactive }, -- The space between the open buffer list and the tabpage
    BufferTabpagesSep = { fg = c.magenta, bg = opts.transparent and c.none or bg_alternate }, -- Tab pages indicator at top right corner (tabs not buffers)

    --- Current selected buffer
    BufferCurrent = { fg = c.fg, bg = bg_current, bold = true, italic = true }, -- current buffer, not modified
    BufferCurrentBtn = { fg = c.magenta, bg = bg_current }, --  button at the right of the bar
    BufferCurrentMod = { fg = c.orange, bg = bg_current }, -- current buffer, modified
    BufferCurrentNumber = { fg = c.grey_light, bg = bg_current }, -- current bufnr
    BufferCurrentPin = "BufferCurrentMod", -- Mark for `:BufferPick` target buffer
    BufferCurrentSign = { fg = c.blue, bg = bg_current }, -- left delimiter symbol ▎
    BufferCurrentSignRight = "BufferCurrentSign", -- right delimiter symbol (default none)
    BufferCurrentTarget = { fg = c.black, bg = c.orange, bold = true }, -- Mark for `:BufferPick` target buffer

    --- Non-selected buffer
    BufferInactive = { fg = unselected_fg, bg = bg_inactive },
    BufferInactiveBtn = "BufferInactive",
    BufferInactiveMod = "BufferInactiveBtn",
    BufferInactiveNumber = "BufferInactive",
    BufferInactivePin = { fg = dim.orange, bg = bg_inactive },
    BufferInactiveSign = { fg = c.grey_medium, bg = bg_inactive },
    BufferInactiveSignRight = "BufferInactiveSign",
    BufferInactiveTarget = "BufferCurrentTarget",

    --- Non-selected buffers visible on the window
    BufferVisible = { fg = unselected_fg, bg = bg_visible, italic = true },
    BufferVisibleBtn = { fg = unselected_fg, bg = bg_visible },
    BufferVisibleMod = "BufferVisibleBtn",
    BufferVisibleNumber = "BufferVisibleBtn",
    BufferVisibleSign = { fg = c.blue, bg = bg_visible },
    BufferVisibleSignRight = "BufferVisibleSign",
    BufferVisibleTarget = "BufferCurrentTarget",

    --- Previous selected buffer
    BufferAlternate = { fg = c.grey_light, bg = bg_alternate, italic = true },
    BufferAlternateBtn = { fg = c.grey_light, bg = bg_alternate },
    BufferAlternateMod = "BufferAlternateBtn",
    BufferAlternateNumber = "BufferAlternateBtn",
    BufferAlternateSign = { fg = c.purple, bg = bg_alternate },
    BufferAlternateSignRight = { fg = c.purple, bg = bg_alternate },
    BufferAlternateTarget = "BufferCurrentTarget",

    --- Diagnostics

    -- Enable through opts.icons.diagnostics
    BufferCurrentERROR = { fg = c.error, bg = bg_current },
    BufferCurrentINFO = { fg = c.info, bg = bg_current },
    BufferCurrentHINT = { fg = c.hint, bg = bg_current },
    BufferCurrentWARN = { fg = c.warning, bg = bg_current },

    BufferInactiveERROR = { fg = dim.error, bg = bg_inactive },
    BufferInactiveHINT = { fg = dim.hint, bg = bg_inactive },
    BufferInactiveINFO = { fg = dim.info, bg = bg_inactive },
    BufferInactiveWARN = { fg = dim.warning, bg = bg_inactive },

    BufferVisibleERROR = { fg = dim.error, bg = bg_visible },
    BufferVisibleHINT = { fg = dim.hint, bg = bg_visible },
    BufferVisibleINFO = { fg = dim.info, bg = bg_visible },
    BufferVisibleWARN = { fg = dim.warning, bg = bg_visible },

    BufferAlternateERROR = { fg = dim.error, bg = bg_alternate },
    BufferAlternateHINT = { fg = dim.hint, bg = bg_alternate },
    BufferAlternateINFO = { fg = dim.info, bg = bg_alternate },
    BufferAlternateWARN = { fg = dim.warning, bg = bg_alternate },

    --- Git

    -- Requires gitsigns and opts.icons.gitsigns (check docs to enable):
    BufferCurrentADDED = { fg = c.green, bg = bg_current },
    BufferCurrentCHANGED = { fg = c.orange, bg = bg_current },
    BufferCurrentDELETED = { fg = c.magenta, bg = bg_current },

    BufferInactiveADDED = { fg = dim.green, bg = bg_inactive },
    BufferInactiveCHANGED = { fg = dim.orange, bg = bg_inactive },
    BufferInactiveDELETED = { fg = dim.magenta, bg = bg_inactive },

    BufferVisibleADDED = { fg = dim.green, bg = bg_visible },
    BufferVisibleCHANGED = { fg = dim.orange, bg = bg_visible },
    BufferVisibleDELETED = { fg = dim.magenta, bg = bg_visible },

    BufferAlternateADDED = { fg = dim.green, bg = bg_alternate },
    BufferAlternateCHANGED = { fg = dim.orange, bg = bg_alternate },
    BufferAlternateDELETED = { fg = dim.magenta, bg = bg_alternate },

    -- BufferAlternatePin = {},
    -- BufferAlternatePinBtn = {},
    -- BufferInactivePinBtn = {},
    -- BufferVisiblePin = {},
    -- BufferVisiblePinBtn = {},
  }
end

return M
