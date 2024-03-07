local M = {}

---Add markdown header marks into Treesitter highlights queries
-- HACK: Restore markdown header markers:
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/6260
function M.set_headers_marks()
  vim.treesitter.query.set(
    "markdown",
    "highlights",
    [=[; extends
(atx_heading (atx_h1_marker) @markup.heading.1.marker)
(atx_heading (atx_h2_marker) @markup.heading.2.marker)
(atx_heading (atx_h3_marker) @markup.heading.3.marker)
(atx_heading (atx_h4_marker) @markup.heading.4.marker)
(atx_heading (atx_h5_marker) @markup.heading.5.marker)
(atx_heading (atx_h6_marker) @markup.heading.6.marker)

(setext_heading (setext_h1_underline) @markup.heading.1.marker)
(setext_heading (setext_h2_underline) @markup.heading.2.marker)
  ]=]
  )
end

return M
