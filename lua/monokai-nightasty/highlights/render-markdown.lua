local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    RenderMarkdownBullet = "@tag",
    RenderMarkdownChecked = { fg = c.green },
    RenderMarkdownCode = { bg = c.bg_float },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
    RenderMarkdownDash = "@tag",
    RenderMarkdownTableHead = "@tag",
    RenderMarkdownTableRow = "@tag",
    RenderMarkdownUnchecked = { fg = c.blue_alt },
    RenderMarkdownLink = { fg = utils.lighten(c.blue, 0.6) },
    RenderMarkdownQuote = { fg = c.orange, bg = c.none },
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
