local M = {}

---@return string data The file content
function M.read_markdown_highlights_query()
  local file = vim.treesitter.query.get_files("markdown", "highlights")[1]
  local fd = assert(io.open(file, "r"))
  local data = fd:read("*a")
  fd:close()
  return data
end

---@type boolean To avoid that set_headers_marks run multiple times
M.set_headers_marks_was_executed = false

---@type boolean To avoid applying the query multiple times (one per event)
M.set_query_was_executed = false

---Add markdown header marks into Treesitter highlights queries
-- HACK: Restore markdown header markers:
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/6260
function M.set_headers_marks()
  if M.set_headers_marks_was_executed then
    return
  end
  M.set_headers_marks_was_executed = true

  vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.md", "*.markdown" },
    group = vim.api.nvim_create_augroup("MonokaiNightastyTSfix", {}),
    once = true,
    desc = "Enable Treesitter `#` headers marks",
    callback = function(ev)
      if M.set_query_was_executed then
        return
      end

      local ok, md_query = pcall(M.read_markdown_highlights_query)
      if not ok then
        local msg = "monokai-nightasty: Can't access markdown highlights query file."
        vim.notify(msg, vim.log.levels.WARN)
        return
      end
      md_query = md_query
        .. [=[;; extends
        (atx_heading (atx_h1_marker) @markup.heading.1.marker)
        (atx_heading (atx_h2_marker) @markup.heading.2.marker)
        (atx_heading (atx_h3_marker) @markup.heading.3.marker)
        (atx_heading (atx_h4_marker) @markup.heading.4.marker)
        (atx_heading (atx_h5_marker) @markup.heading.5.marker)
        (atx_heading (atx_h6_marker) @markup.heading.6.marker)

        (setext_heading (setext_h1_underline) @markup.heading.1.marker)
        (setext_heading (setext_h2_underline) @markup.heading.2.marker)
      ]=]
      vim.treesitter.query.set("markdown", "highlights", md_query)
      vim.treesitter.start(ev.buf)
    end,
  })
end

return M
