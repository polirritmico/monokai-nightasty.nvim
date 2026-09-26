local M = {}

---@return string data The file content
function M.read_markdown_highlights_query()
  local files = vim.treesitter.query.get_files("markdown", "highlights")
  local data = ""
  for _, file in ipairs(files) do
    local fd = assert(io.open(file, "r"))
    data = data .. fd:read("*a") .. "\n"
    fd:close()
  end
  return data
end

---@type string autocommand group name
M.group_name = "MonokaiNightastyTSfix"

---@type boolean To avoid that set_headers_marks run multiple times
M.set_headers_marks_was_executed = false

---Add markdown header marks into Treesitter highlights queries
-- HACK: Restore markdown header markers:
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/6260
function M.set_headers_marks()
  if M.set_headers_marks_was_executed then
    return
  end
  M.set_headers_marks_was_executed = true

  local md_query = [=[;; extends
        (atx_heading (atx_h1_marker) @markup.heading.1.marker)
        (atx_heading (atx_h2_marker) @markup.heading.2.marker)
        (atx_heading (atx_h3_marker) @markup.heading.3.marker)
        (atx_heading (atx_h4_marker) @markup.heading.4.marker)
        (atx_heading (atx_h5_marker) @markup.heading.5.marker)
        (atx_heading (atx_h6_marker) @markup.heading.6.marker)

        (setext_heading (setext_h1_underline) @markup.heading.1.marker)
        (setext_heading (setext_h2_underline) @markup.heading.2.marker)
      ]=]

  if vim.fn.has("nvim-0.12") == 1 then
    M.set_header_autocomand(md_query)
  else
    M.set_header_autocomand_pre_v012(md_query)
  end
end

---Apply markdown highlights query for Neovim >=v0.12
---@param header_query string The markdown query to append
function M.set_header_autocomand(header_query)
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "markdown",
    group = vim.api.nvim_create_augroup(M.group_name, {}),
    once = true,
    desc = "Enable Treesitter `#` headers marks",
    callback = function(ev)
      local ok, md_query = pcall(M.read_markdown_highlights_query)
      if not ok then
        local msg = "monokai-nightasty: Can't access markdown highlights query file."
        vim.notify(msg, vim.log.levels.WARN)
        return
      end

      md_query = md_query .. header_query
      vim.treesitter.query.set("markdown", "highlights", md_query)
      vim.treesitter.stop(ev.buf)
      vim.treesitter.start(ev.buf)
    end,
  })
end

---Apply markdown highlights query for pre v0.12 Neovim
---@param header_query string The markdown query to append
function M.set_header_autocomand_pre_v012(header_query)
  vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.md", "*.markdown" },
    group = vim.api.nvim_create_augroup(M.group_name, {}),
    once = true,
    desc = "Enable Treesitter `#` headers marks",
    callback = function(ev)
      local ok, md_query = pcall(M.read_markdown_highlights_query)
      if not ok then
        local msg = "monokai-nightasty: Can't access markdown highlights query file."
        vim.notify(msg, vim.log.levels.WARN)
        return
      end

      md_query = md_query .. header_query
      vim.treesitter.query.set("markdown", "highlights", md_query)
      vim.treesitter.start(ev.buf)
    end,
  })
end

return M
