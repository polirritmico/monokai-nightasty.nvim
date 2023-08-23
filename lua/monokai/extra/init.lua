local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string}>
-- stylua: ignore
M.extras = {tmux = {ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux"},
    -- xresources = {ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources"},
    -- lua = {ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing"},
    -- zathura = {ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura"},
    palettes = {ext = "Palettes", url = "https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/extras/palettes"},
}

local function write(str, fileName)
    print("[write] " .. fileName)
    vim.fn.mkdir(vim.fs.dirname(fileName), "p")
    local file = io.open(fileName, "w")
    file:write(str)
    file:close()
end

function M.read_file(file)
    local fd = assert(io.open(file, "r"))
    ---@type string
    local data = fd:read("*a")
    fd:close()
    return data
end

function M.write_file(file, contents)
    local fd = assert(io.open(file, "w+"))
    fd:write(contents)
    fd:close()
end

function M.docs()
    local file = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h:h") .. "/README.md"
    local tag = "extras"
    local pattern = "(<%!%-%- " .. tag .. ":start %-%->).*(<%!%-%- " .. tag .. ":end %-%->)"
    local readme = M.read_file(file)
    local lines = {}
    local names = vim.tbl_keys(M.extras)
    table.sort(names)
    for _, name in ipairs(names) do
        local info = M.extras[name]
        table.insert(lines, "- [" .. info.label .. "](" .. info.url .. ") ([" .. name .. "](extras/" .. name .. "))")
    end
    readme = readme:gsub(pattern, "%1\n" .. table.concat(lines, "\n") .. "\n%2")
    M.write_file(file, readme)
end

function M.setup()
    M.docs()
    local config = require("monokai.config")
    vim.o.background = "dark"

    -- map of style to style name
    local styles = {
        dark = "",
        -- light = " Light",
    }

    for extra, info in pairs(M.extras) do
        package.loaded["monokai.extra." .. extra] = nil
        local plugin = require("monokai.extra." .. extra)
        -- TODO: Check this code
        for style, style_name in pairs(styles) do
            config.setup({ style = style })
            -- TODO: Check tansform = true... maybe is not longer needed
            local colors = require("monokai.colors").setup({ transform = true })
            local fname = "extras/" .. extra .. "/monokai_" .. style .. "." .. info.ext
            colors["_upstream_url"] = "https://github.com/polirritmico/monokai.nvim/raw/main/extras/" .. fname
            colors["_style_name"] = "Monokai" .. style_name
            write(plugin.generate(colors), fname)
        end
    end
end

return M
