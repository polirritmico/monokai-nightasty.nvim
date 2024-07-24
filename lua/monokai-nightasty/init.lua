local config = require("monokai-nightasty.config")

local M = {}

---@param opts? monokai.Config
function M.load(opts)
  opts = require("monokai-nightasty.config").extend(opts)
  opts.style = opts.style and opts.style or vim.o.background

  if not M.loaded then
    vim.api.nvim_create_user_command("MonokaiToggleLight", function()
      require("monokai-nightasty").toggle()
    end, { desc = "Monokai: Toggle light/dark theme" })

    if opts.markdown_header_marks then
      require("monokai-nightasty.extras.ts_markdown").set_headers_marks()
    end

    M.loaded = true
  end

  require("monokai-nightasty.theme").setup(opts)
end

---Toggle dark/light theme. Sets the `vim.o.background` to `dark` or `light`.
function M.toggle()
  vim.o.background = (vim.o.background == "dark") and "light" or "dark"
end

M.setup = config.setup

return M
