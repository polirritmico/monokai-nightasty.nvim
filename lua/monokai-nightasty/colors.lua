local util = require("monokai-nightasty.util")

local M = {}

---@class Palette
M.default = {
    none = "NONE",

    -- Base colors
    blue_light = "#62d8f1",
    green_light = "#a4e400",
    magenta = "#fc1a70",
    orange = "#ff9700",
    purple = "#af87ff",
    yellow = "#ffff87",

    -- Neutrals
    black = "#000000",
    bg_darker = "#262626",
    charcoal = "#262626",
    charcoal_medium = "#2b2b2b",
    charcoal_light = "#313131",
    grey_darker = "#444444",
    terminal_black = "#444444",
    grey_darker_alt = "#3e3e3e",
    fg_gutter = "#3e3e3e",
    grey_dark = "#4b4b4b",
    grey_medium = "#585858",
    grey = "#8a8a8a",
    comment = "#8a8a8a",
    grey_light = "#bcbcbc",
    grey_lighter = "#e8e8e8",
    fg_dark = "#e8e8e8",
    white = "#ffffff",
    fg = "#ffffff",

    -- Variant colors
    bg_dark = "#121212",
    bg = "#2b2b2b",

    -- Extra colors
    blue_medium = "#0087ff",
    green_alt = "#83dc78",
    green_unchanged = "#a4e400",
    red = "#ff005f",
    yellow_light = "#f6f557",
    git = { add = "#a4e400", change = "#ff9700", delete = "#fc1a70" },
}

M.light_palette = {
    -- Base colors
    blue_light = "#00b3e3",      -- #62d8f1
    green_light = "#4fb000",     -- #a4e400
    magenta = "#ff004b",
    orange = "#ff4d00",
    purple = "#6054d0",
    yellow = "#ff8f00",

    -- Neutrals
    charcoal = "#e3e3e3",        -- #262626
    charcoal_medium = "#dedede", -- #2b2b2b
    charcoal_light = "#d8d8d8",  -- #313131
    grey_darker = "#bfbfbf",     -- #444444
    terminal_black = "#bfbfbf",  -- #444444
    grey_darker_alt = "#c9c9c9", -- #3e3e3e
    fg_gutter = "#c9c9c9",       -- #3e3e3e
    grey_dark = "#b2b2b2",       -- #4b4b4b
    grey_medium = "#a5a5a5",     -- #585858
    grey = "#7f7f7f",            -- #8a8a8a
    comment = "#7f7f7f",         -- #8a8a8a
    grey_light = "#4c4c4c",      -- #bcbcbc
    grey_lighter = "#171717",    -- #e8e8e8
    bg_darker = "#d3d3d3",       -- #262626, #e3e3e3
    fg_dark = "#171717",         -- #e8e8e8
    fg = "#333333",              -- #ffffff

    -- Variant colors
    bg_dark = "#d9d9d9",         -- #262626, #e8e8e8
    bg = "#ffffff",              -- #2b2b2b, #1a1b26

    -- Extra colors
    green_unchanged = "#a4e400",
    git = { add = "#4fb000", change = "#ff4d00", delete = "#ff004b" },
}

---@return ColorScheme
function M.setup(opts)
    local config = require("monokai-nightasty.config")

    local is_light = (opts and opts.force_style == "light") and function() return true end
        or (opts and opts.force_style == "dark") and function() return false end
        or config.is_light

    local bg_cfg = is_light() and config.options.light_style_background
        or config.options.dark_style_background
    local palette = is_light() and M.light_palette or {}

    -- Color Palette
    ---@class ColorScheme: Palette
    local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

    config.options.transparent = bg_cfg == "transparent" and true or false

    colors.bg = (bg_cfg == "dark" or bg_cfg == "transparent") and colors.bg_dark
        or string.sub(bg_cfg, 1, 1) == "#" and bg_cfg
        or colors.bg

    -- Default values for functions util.darken() and util.lighter()
    util.bg = colors.bg
    util.fg = colors.fg

    colors.border = colors.blue_light
    colors.border_highlight = colors.fg

    -- Popups and statusline
    colors.bg_popup = colors.grey_darker
    colors.bg_statusline = is_light() and util.darken(colors.bg, 0.93, colors.fg)
        or colors.grey_darker
    colors.bg_status_alt = is_light() and colors.charcoal_light or colors.charcoal_light
    colors.fg_statusline = colors.fg_dark

    -- Sidebar and Floats
    colors.bg_sidebar = config.options.hl_styles.sidebars == "transparent" and colors.none
        or config.options.hl_styles.sidebars == "dark" and colors.bg_dark
        or colors.bg
    colors.bg_float = config.options.hl_styles.floats == "transparent" and colors.none
        or config.options.hl_styles.floats == "dark" and colors.bg_dark
        or colors.bg
    colors.fg_float = colors.fg

    -- Set the background for the current line (current cursor position)
    colors.bg_highlight = is_light() and util.lighten(colors.bg, 0.9, colors.fg)
        or util.darken(colors.bg, 0.9, colors.fg) -- (0.97 for #313131)

    colors.bg_visual = colors.grey_darker
    colors.bg_search = colors.yellow
    colors.fg_search = colors.black
    colors.fg_sidebar = colors.fg_dark

    colors.error = colors.red
    colors.warning = colors.orange
    colors.info = colors.blue_medium
    colors.hint = colors.green_alt

    -- FIXME: Improve this colors
    colors.diff = {
        add = util.darken(colors.green_light, 0.15),
        delete = util.darken(colors.magenta, 0.15),
        change = util.darken(colors.blue_medium, 0.15),
        text = colors.blue_medium,
    }

    -- colors.delta = {
    --     add = util.darken(colors.green2, 0.45),
    --     delete = util.darken(colors.red1, 0.45),
    -- }

    -- Apply user configs
    config.options.on_colors(colors)

    return colors
end

return M
