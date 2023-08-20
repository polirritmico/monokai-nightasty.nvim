local util = require("monokai.util")

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
    red = "#ff005f",
    yellow_light = "#f6f557",

    git = { change = "#ff9700", add = "#a4e400", delete = "#fc1a70" },
}

M.light_palette = {
    -- Base colors
    blue_light = "#00b3e3",
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
}

---@return ColorScheme
function M.setup(opts)
    opts = opts or {}
    local config = require("monokai.config")

    -- NOTE: This theme has two palettes, each one with the normal or dark
    -- variants. The light palette setting is "light_style". "style" for dark
    -- TODO: Add this info to the documentation and default config file
    local variant = config.is_day() and config.options.light_style or config.options.style
    local palette = M[variant] or {}
    if type(palette) == "function" then
        palette = palette()
    end

    -- Color Palette
    ---@class ColorScheme: Palette
    local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

    colors.light_theme = M.light_palette
    if not opts.transform and config.is_day() then
        config.options.transparent = config.options.transparent_light
        util.set_light_colors(colors)
    end

    colors.bg = variant == "dark" and colors.bg_dark or colors.bg
    util.bg = colors.bg -- util darken and lighter functions fall back values
    -- util.fg = colors.fg
    -- FIXME: Remove brightness. keep documentation and functions
    util.day_brightness = config.options.day_brightness

    -- TODO: git ignore?
    -- colors.git.ignore = colors.grey_dark
    colors.border = util.darken(colors.bg, 0.8, colors.black)
    colors.border_highlight = colors.fg

    -- Popups and statusline always get a dark background
    colors.bg_popup = colors.grey_darker
    colors.bg_statusline = colors.grey_darker
    colors.fg_statusline = colors.grey_light

    -- TODO: Check all the posible values
    -- Sidebar and Floats are configurable
    colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
        or config.options.styles.sidebars == "dark" and colors.bg_dark
        or colors.bg
    colors.bg_float = config.options.styles.floats == "transparent" and colors.none
        or config.options.styles.floats == "dark" and colors.bg_dark
        or colors.bg
    -- colors.fg_float = config.options.styles.floats == "dark" and colors.fg_dark or colors.fg
    colors.fg_float = colors.fg

    -- Set the cursor-line highlight
    -- TODO: palette dark/light; variant normal/dark
    colors.bg_highlight = config.options.transparent and colors.charcoal_medium
        or variant == config.options.light_style and colors.charcoal_medium
        or colors.grey_darker

    colors.bg_visual = colors.grey_darker
    colors.bg_search = colors.yellow
    colors.fg_search = colors.black
    colors.fg_sidebar = colors.fg_dark

    colors.error = colors.red
    colors.warning = colors.orange
    colors.info = colors.blue_medium
    colors.hint = colors.green_alt

    -- FIXME: This need a better selection or color is fine but the theme need work
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

    return colors
end

return M
