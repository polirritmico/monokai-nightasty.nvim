local util = require("monokai.util")
local theme = require("monokai.theme")
local config = require("monokai.config")

local M = {}

M.loaded = false

---@param opts Config|nil
function M.load(opts)
    -- Set MonokaiToggleLight
    if not M.loaded then
        vim.cmd("command! MonokaiToggleLight lua MonokaiToggleLight()")
        M.loaded = true
    end

    if opts then
        require("monokai.config").extend(opts)
    end
    util.load(theme.setup())
end

function MonokaiToggleLight()
    vim.o.background = (vim.o.background == "dark") and "light" or "dark"
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
