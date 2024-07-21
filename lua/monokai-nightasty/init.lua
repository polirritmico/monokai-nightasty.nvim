local config = require("monokai-nightasty.config")

local M = {}

---@param opts monokai.Config?
function M.load(opts)
  if not M.loaded then
    vim.api.nvim_create_user_command("MonokaiToggleLight", function()
      require("monokai-nightasty").toggle()
    end, { desc = "Monokai: Toggle light/dark theme" })

    if opts and opts.markdown_header_marks == true then
      require("monokai-nightasty.extras.ts_markdown").set_headers_marks()
    end

    M.loaded = true
  end

  -- NOTE: Check if this approach is fine or this should be at the top of the fn
  opts = require("monokai-nightasty.config").extend(opts)

  -- check and set the background in the load function?
  require("monokai-nightasty.theme").setup(opts)
end

---Toggle dark/light theme. Sets the `vim.o.background` to `dark` or `light`.
function M.toggle()
  vim.o.background = (vim.o.background == "dark") and "light" or "dark"
end

M.setup = config.setup

return M
