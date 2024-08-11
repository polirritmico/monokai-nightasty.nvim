local M = {}

M.url = "https://github.com/dense-analysis/ale"

---@type monokai.HighlightsFn
function M.get()
  return {
    ALEErrorSign = "DiagnosticError", -- The highlight for error signs. See |g:ale_set_signs|.
    ALEInfoSign = "DiagnosticInfo", -- The highlight for info message signs. See |g:ale_set_signs|.
    ALEWarningSign = "DiagnosticWarn", -- The highlight for info message signs. See |g:ale_set_signs|.
    ALEError = "SpellBad", -- The hl for highlighted errors. See |g:ale_set_highlights|.
    ALEInfo = "SpellLocal", -- The highlight for highlighted info messages. See |g:ale_set_highlights|.
    ALEWarning = "SpellCap", -- The highlight for highlighted warnings. See |g:ale_set_highlights|.

    ALEStyleError = "ALEError", -- The highlight for highlighted style errors. See |g:ale_set_highlights|.
    ALEStyleWarning = "ALEWarning", -- The highlight for highlighted style warnings. See |g:ale_set_highlights|.
    ALEStyleErrorSign = "ALEErrorSign", -- The highlight for style error signs. See |g:ale_set_signs|.
    ALEStyleWarningSign = "ALEWarningSign", -- The highlight for style warning signs. See |g:ale_set_signs|.

    ALEVirtualTextError = "DiagnosticVirtualTextError", -- The highlight for virtualtext errors. See |g:ale_virtualtext_cursor|.
    ALEVirtualTextStyleError = "ALEVirtualTextError", -- The highlight for virtualtext style errors. See |g:ale_virtualtext_cursor|.
    ALEVirtualTextInfo = "DiagnosticVirtualTextInfo", -- The highlight for virtualtext info. See |g:ale_virtualtext_cursor|.
    ALEVirtualTextWarning = "DiagnosticVirtualTextWarn", -- The highlight for virtualtext errors. See |g:ale_virtualtext_cursor|.
    ALEVirtualTextStyleWarning = "ALEVirtualTextWarning", -- The highlight for virtualtext style warnings. See |g:ale_virtualtext_cursor|.

    -- ALEErrorSignLineNr = "CursorLineNr", -- The highlight for error signs. See |g:ale_set_signs|.
    -- ALEInfoSignLineNr = "CursorLineNr", -- The highlight for error signs. See |g:ale_set_signs|.
    -- ALEStyleErrorSignLineNr = "CursorLineNr", -- The highlight for error signs. See |g:ale_set_signs|.
    -- ALEStyleWarningSignLineNr = "CursorLineNr", -- The highlight for error signs. See |g:ale_set_signs|.
    -- ALEWarningSignLineNr = "CursorLineNr", -- The highlight for error signs. See |g:ale_set_signs|.
    -- ALEWarningLine = "", -- The highlight for entire lines where warnings appear. Only the first line for a problem will be highlighted.
    -- ALEErrorLine = "", -- The hl for an entire line where errors appear. Only the first line for a problem will be highlighted.
    -- ALEInfoLine = "", -- The highlight for entire lines where info messages appear. Only the first line for a problem will be highlighted.
  }
end

return M
