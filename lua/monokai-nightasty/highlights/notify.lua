local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type monokai.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NotifyBackground = { fg = c.fg, bg = c.bg },

    -- Border
    NotifyERRORBorder = { fg = utils.darken(c.error, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyWARNBorder = { fg = utils.darken(c.warning, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyINFOBorder = { fg = utils.darken(c.info, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = utils.darken(c.comment, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = utils.darken(c.purple, 0.3), bg = opts.transparent and c.none or c.bg },

    -- Icons
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.comment },
    NotifyTRACEIcon = { fg = c.purple },

    -- Title
    NotifyERRORTitle = "NotifyERRORIcon",
    NotifyWARNTitle = "NotifyWARNIcon",
    NotifyINFOTitle = "NotifyINFOIcon",
    NotifyDEBUGTitle = "NotifyDEBUGIcon",
    NotifyTRACETitle = "NotifyTRACEIcon",

    -- Body
    NotifyERRORBody = "Normal",
    NotifyWARNBody = "Normal",
    NotifyINFOBody = "Normal",
    NotifyDEBUGBody = "Normal",
    NotifyTRACEBody = "Normal",
  }
end

return M
