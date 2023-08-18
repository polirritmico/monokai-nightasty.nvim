local util = require("monokai.util")

local M = {}

---@class Palette
M.default = {
    none = "NONE",

    -- original palette
    blue_light = "#62d8f1",
    green_light = "#a4e400",
    magenta = "#fc1a70",
    orange = "#ff9700",
    purple = "#af87ff",
    yellow = "#ffff87",

    -- Neutrals
    black = "#000000",
    charcoal = "#262626",
    bg_dark = "#262626",
    charcoal_medium = "#2b2b2b",
    bg = "#2b2b2b",
    charcoal_light = "#313131",
    bg_highlight = "#313131",
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
    fg = "#ffffff",
    white = "#ffffff",

    -- Extra colors
    blue_medium = "#0087ff",
    green_alt = "#83dc78",
    red = "#ff005f",
    yellow_light = "#f6f557",
    -- magenta_dark = "#942eb5",
    -- green = "#79d81b",
    -- green_medium = "#58b500",
    -- red_dark = "#ff1e00",

    git = { change = "#ff9700", add = "#a4e400", delete = "#fc1a70" },
    -- gitSigns = {
    --     add = "#266d6a",
    --     change = "#536c9e",
    --     delete = "#b2555b",
    -- },
}

M.light_palette = {
    -- Base colors
    blue_light = "#00b3e3",
    -- green_light = "#00b400",
    green_light = "#a4e400",
    magenta = "#ff004b",
    orange = "#ff4d00",
    purple = "#6054d0",
    yellow = "#ff8f00",

    -- Neutrals
    charcoal = "#e3e3e3",        -- #262626
    bg = "#ffffff",             -- #2b2b2b, #1a1b26
    bg_dark = "#e3e3e3",        -- #262626
    charcoal_medium = "#dedede",-- #2b2b2b
    charcoal_light = "#d8d8d8", -- #313131
    bg_highlight = "#d8d8d8",   -- #313131
    grey_darker = "#bfbfbf",    -- #444444
    terminal_black = "#bfbfbf", -- #444444
    grey_darker_alt = "#c9c9c9",-- #3e3e3e
    fg_gutter = "#c9c9c9",      -- #3e3e3e
    grey_dark = "#b2b2b2",      -- #4b4b4b
    grey_medium = "#a5a5a5",    -- #585858
    grey = "#7f7f7f",           -- #8a8a8a
    comment = "#7f7f7f",        -- #8a8a8a
    grey_light = "#4c4c4c",     -- #bcbcbc
    grey_lighter = "#171717",   -- #e8e8e8
    fg_dark = "#171717",        -- #e8e8e8
    fg = "#333333",             -- #ffffff
}

---@return ColorScheme
function M.setup(opts)
    opts = opts or {}
    local config = require("monokai.config")

    local style = config.is_day() and config.options.light_style or config.options.style
    local palette = M[style] or {}
    if type(palette) == "function" then
        palette = palette()
    end

    -- Color Palette
    ---@class ColorScheme: Palette
    local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)
    colors.light_theme = M.light_palette -- Add light colors

    if opts.transform and config.is_day() then
        -- TODO: This seems to inverts colors for lualine.
        -- Also needs to update all plugins using
        -- require("monokai.colors").setup()?
        -- NOTE: Test note. Should be readable on light theme
        -- So need a way to update the colors loaded from plugins
        print("TRANSFORM TRUE!")
        util.set_light_colors(colors)
    end

    util.bg = colors.bg
    util.day_brightness = config.options.day_brightness

    -- FIXME: This need a better selection or color is fine but the theme need work
    colors.diff = {
        add = util.darken(colors.green_light, 0.15),
        delete = util.darken(colors.magenta, 0.15),
        change = util.darken(colors.blue_medium, 0.15),
        text = colors.blue_medium,
    }

    -- colors.git.ignore = colors.grey_dark
    colors.black = util.darken(colors.bg, 0.8, "#000000") -- Generate black color from bg
    colors.border_highlight = colors.fg
    colors.border = colors.black

    -- Popups and statusline always get a dark background
    -- TODO: set neutrals used by lualine here to set the light theme
    colors.bg_popup = colors.grey_darker
    colors.bg_statusline = colors.grey_darker
    colors.fg_statusline = colors.grey_light

    -- Sidebar and Floats are configurable
    colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
        or config.options.styles.sidebars == "dark" and colors.bg_dark
        or colors.bg

    -- FIXME: Not working for light theme. Too dark
    colors.bg_float = config.options.styles.floats == "transparent" and colors.none
        or config.options.styles.floats == "dark" and colors.bg_dark
        or colors.bg

    -- colors.bg_visual = util.darken(colors.blue0, 0.4)
    colors.bg_visual = colors.grey_darker
    colors.bg_search = colors.yellow
    colors.fg_search = colors.black
    colors.fg_sidebar = colors.fg_dark
    -- colors.fg_float = config.options.styles.floats == "dark" and colors.fg_dark or colors.fg
    colors.fg_float = colors.fg

    colors.error = colors.red
    colors.warning = colors.orange
    colors.info = colors.blue_medium
    colors.hint = colors.green_alt

    -- colors.delta = {
    --     add = util.darken(colors.green2, 0.45),
    --     delete = util.darken(colors.red1, 0.45),
    -- }

    return colors
end

return M
