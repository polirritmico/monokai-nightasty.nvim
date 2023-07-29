local util = require("monokai.util")

local M = {}

---@class Palette
M.default = {
    none = "NONE",

    -- original palette
    purple = "#af87ff",
    green_light = "#a4e400",
    blue_light = "#62d8f1",
    magenta = "#fc1a70",
    orange = "#ff9700",
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
    grey_lighter = "#e8e8e8",
    fg_dark = "#e8e8e8",
    grey_darker_alt = "#3e3e3e",
    fg_gutter = "#3e3e3e",
    grey_dark = "#4b4b4b",
    grey_medium = "#585858",
    grey = "#8a8a8a",
    comment = "#8a8a8a",
    grey_light = "#bcbcbc",
    white = "#ffffff",
    fg = "#ffffff",

    -- Extra colors
    blue_medium = "#0087ff",
    green_alt = "#83dc78",
    red = "#ff005f",
    yellow_light = "#f6f557",
    -- magenta_dark = "#942eb5",
    -- green = "#79d81b",
    -- green_medium = "#58b500",
    -- red_dark = "#ff1e00",
    -------------------------------

    -- tokyonight colors
    -- blue0 = "#3d59a1",
    -- blue = "#7aa2f7",
    -- cyan = "#7dcfff",
    -- blue1 = "#2ac3de",
    -- blue2 = "#0db9d7",
    -- blue5 = "#89ddff",
    -- blue6 = "#b4f9f8",
    -- blue7 = "#394b70",
    -- magenta = "#bb9af7",
    -- magenta2 = "#ff007c",
    -- purple = "#9d7cd8",
    -- orange = "#ff9e64",
    -- yellow = "#e0af68",
    -- green = "#9ece6a",
    -- green1 = "#73daca",
    -- green2 = "#41a6b5",
    -- teal = "#1abc9c",
    -- red = "#f7768e",
    -- red1 = "#db4b4b",

    git = { change = "#ff9700", add = "#a4e400", delete = "#fc1a70" },
    -- gitSigns = {
    --     add = "#266d6a",
    --     change = "#536c9e",
    --     delete = "#b2555b",
    -- },
}

M.night = {
    bg = "#1a1b26",
    bg_dark = "#16161e",
}
M.day = M.night

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

    util.bg = colors.bg
    util.day_brightness = config.options.day_brightness

    colors.diff = {
        add = util.darken(colors.green_light, 0.15), -- green_medium
        delete = util.darken(colors.magenta, 0.15), -- red / red_dark
        change = util.darken(colors.blue_medium, 0.15),
        text = colors.blue_medium,
    }

    -- colors.git.ignore = colors.grey_dark
    colors.black = util.darken(colors.bg, 0.8, "#000000") -- Generate black color from bg
    -- colors.border_highlight = util.darken(colors.blue1, 0.8)
    colors.border_highlight = colors.fg --util.darken(colors.fg, 0.8)
    colors.border = colors.black

    -- Popups and statusline always get a dark background
    colors.bg_popup = colors.grey_darker -- bg_dark
    colors.bg_statusline = colors.grey_darker
    colors.fg_statusline = colors.grey_light

    -- Sidebar and Floats are configurable
    colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
        or config.options.styles.sidebars == "dark" and colors.bg_dark
        or colors.bg

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

    config.options.on_colors(colors)
    if opts.transform and config.is_day() then
        util.invert_colors(colors)
    end

    return colors
end

return M
