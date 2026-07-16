local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
  return {
    CodeActionText = "Identifier",
    RenameNormal = { fg = c.orange, bg = c.bg_float }, -- input text on rename float window
    SagaCount = { fg = c.magenta, bg = c.grey_dark },
    SagaFinderFname = { fg = c.orange, italic = opts.italics },
    SagaFolder = { fg = c.blue },
    SagaInCurrent = { fg = utils.darken(c.orange, 0.6) }, -- indentation line
    SagaLightBulb = "DiagnosticSignHint",
    SagaNormal = "NormalFloat",
    SagaSearch = { fg = c.bg, bg = c.yellow, bold = true }, -- search matches -- SagaSearch = "Search",
    SagaSep = { fg = c.magenta }, -- top bar separator: › -- "Comment"
    SagaSpinner = { fg = c.green }, -- "Statement"
    SagaSpinnerTitle = { fg = c.orange, italic = opts.italics }, -- "Statement"
    SagaTitle = "Title", -- :Lspsaga finder, right window section title
    SagaToggle = "Delimiter",
  }
end

return M
