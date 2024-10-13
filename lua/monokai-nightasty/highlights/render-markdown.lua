local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    RenderMarkdownBullet = "@tag",
    RenderMarkdownChecked = { fg = c.green },
    RenderMarkdownCode = { bg = c.charcoal }, -- Code block background
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline", -- Inline code background
    RenderMarkdownDash = "@tag",
    RenderMarkdownHint = { fg = c.purple }, -- Hint related quote callouts
    RenderMarkdownLink = { fg = utils.lighten(c.blue, 0.6) }, -- Image & hyperlink icons
    RenderMarkdownQuote = { fg = c.orange, bg = c.none },
    RenderMarkdownSuccess = "RenderMarkdownChecked", -- Success related quote callouts
    RenderMarkdownTableHead = "@tag",
    RenderMarkdownTableRow = "@tag",
    RenderMarkdownUnchecked = { fg = c.blue_alt },

    -- RenderMarkdownInfo = "DiagnosticInfo", -- Info related quote callouts
    -- RenderMarkdownWarn = "DiagnosticWarn", -- Warning related quote callouts
    -- RenderMarkdownError = "DiagnosticError", -- Error related quote callouts
    -- RenderMarkdownSign = "SignColumn", -- Sign column background
    -- RenderMarkdownMath = "@markup.math", -- LaTeX lines
    -- RenderMarkdownTodo = "@markup.raw", -- Todo custom checkbox
  }

  -- Rainbow headers
  -- (No `opts.color_headers` cause it could be disabled in the plugin config)
  for i, color in ipairs(c.rainbow) do
    ret["RenderMarkdownH" .. i] = { fg = color, bold = true }
    ret["RenderMarkdownH" .. i .. "Bg"] = { fg = color, bg = utils.darken(color, 0.1) }
  end

  return ret
end

return M
