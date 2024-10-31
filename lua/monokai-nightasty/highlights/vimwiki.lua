local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local ret = {
    TexSnip = { fg = c.green },
    VimwikiCellSeparator = "Keyword",
    VimwikiCode = { fg = c.purple },
    VimwikiHR = { fg = c.magenta },
    VimwikiHeaderChar = { fg = c.magenta },
    VimwikiLink = { fg = c.blue },
    VimwikiLinkChar = "Keyword",
    VimwikiList = "Keyword",
    VimwikiPre = { fg = c.grey },
    VimwikiTag = { fg = c.blue_alt },
  }

  if opts.color_headers then
    for i, color in ipairs(c.rainbow) do
      ret["VimwikiHeader" .. i] = { fg = color, bg = c.none, bold = true }
    end
  else
    for i = 1, 6 do
      ret["VimwikiHeader" .. i] = "Title"
    end
  end

  return ret
end

return M
