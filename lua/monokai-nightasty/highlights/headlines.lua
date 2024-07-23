local M = {}

M.url = "https://github.com/lukas-reineke/headlines.nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local ret = {
    CodeBlock = { bg = c.bg_dark },
    Quote = { fg = c.bg, bg = c.fg_gutter },
    Dash = { fg = c.orange, bold = true },
  }

  -- Rainbow headers
  if opts.color_headers then
    for i, color in ipairs(c.rainbow) do
      ret["Headline" .. i] = { fg = color, bg = c.rainbow_bg[i], bold = true }
      ret["@OrgTSHeadlineLevel" .. i] = { bg = c.rainbow_bg[i], bold = true }
    end
  else
    for i = 1, 6 do
      ret["Headline" .. i] = { bg = c.bg_popup, bold = true }
      ret["@OrgTSHeadlineLevel" .. i] = { bg = c.rainbow_bg[i], bold = true }
    end
  end

  return ret
end

return M
