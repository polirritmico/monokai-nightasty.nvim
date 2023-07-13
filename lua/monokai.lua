-------------------
-- Monokai Theme -- 
-------------------

local vim = vim
local M = {}

local monokai_theme = require("palette.base-style")
local c = monokai_theme.colors
local f = monokai_theme.formats

-- Helper functions
local apply_style = function(group, style)
    local format = style.format and "gui = " .. style.format or "gui = NONE"
    local fg = style.fg and "guifg = " .. style.fg or "guifg = NONE"
    local bg = style.bg and "guibg = " .. style.bg or "guibg = NONE"
    vim.cmd(
    "highlight " .. group .. " " .. fg .. " " .. bg .. " ".. format
    )
end

local set_theme = function(theme)
    for highlight_group, style in pairs(theme) do
        apply_style(highlight_group, style)
    end
end

local set_background = function(transparent, theme)
    if transparent then
        theme.Normal.bg = c.none
    end
end

local remove_italics = function(theme)
    for _, style in pairs(theme) do
        if style.format and style.format == "italic" then
            style.format = nil
        end
    end
end


-- Theme settings
local theme_base = {
    Boolean = { fg = c.purple, bg = c.none, format = f.none },
    Character = { fg = c.purple, bg = c.none, format = f.none },
    ColorColumn = { fg = c.none, bg = c.light_charcoal, format = f.none },
    Comment = { fg = c.grey, bg = c.none, format = f.italic },
    Conceal = { fg = c.none, bg = c.none, format = f.none },
    Conditional = { fg = c.magenta, bg = c.none, format = f.none },
    Constant = { fg = c.purple, bg = c.none, format = f.none },
    CurSearch = { fg = c.black, bg = c.purple, format = f.bold },
    Cursor = { fg = c.charcoal, bg = c.light_blue, format = f.none },
    CursorColumn = { fg = c.none, bg = c.light_charcoal, format = f.none },
    CursorIM = { fg = c.charcoal, bg = c.light_blue, format = f.none },
    CursorLine = { bg = c.light_charcoal, format = f.none },
    CursorLineNr = { fg = c.yellow, format = f.none },
    Debug = { fg = c.magenta, bg = c.none, format = f.none },
    Define = { fg = c.magenta, bg = c.none, format = f.none },
    Delimiter = { fg = c.magenta, bg = c.none, format = f.none },
    DiffAdd = { fg = c.none, bg = c.dark_green, format = f.none },
    DiffChange = { fg = c.white, bg = c.purple_slate, format = f.none },
    DiffDelete = { fg = c.dark_red, bg = c.blood_red, format = f.none },
    DiffText = { fg = c.white, bg = c.bright_blue, format = f.bold },
    Directory = { fg = c.purple, bg = c.none, format = f.none },
    EndOfBuffer = { fg = c.darker_grey, bg = c.none, format = f.none },
    Error = { fg = c.white, bg = c.danger, format = f.none },
    ErrorMsg = { fg = c.white, bg = c.danger, format = f.none },
    Exception = { fg = c.magenta, bg = c.none, format = f.bold },
    Float = { fg = c.purple, bg = c.none, format = f.none },
    FoldColumn = { fg = c.grey, bg = c.none, format = f.none },
    Folded = { fg = c.grey, bg = c.none, format = f.none },
    Function = { fg = c.light_green, bg = c.none, format = f.none },
    Identifier = { fg = c.light_blue, bg = c.none, format = f.none },
    IncSearch = { fg = c.black, bg = c.purple, format = f.bold_underline },
    Include = { fg = c.magenta, bg = c.none, format = f.none },
    Keyword = { fg = c.magenta, bg = c.none, format = f.none },
    Label = { fg = c.yellow, bg = c.none, format = f.none },
    LineNr = { fg = c.dark_grey, bg = c.none, format = f.none },
    LineNrBe = { fg = c.light_green, format = f.none },
    Macro = { fg = c.magenta, bg = c.none, format = f.none },
    MatchParen = { fg = c.magenta, bg = c.none, format = f.bold_underline },
    ModeMsg = { fg = c.white, bg = c.none, format = f.bold },
    MoreMsg = { fg = c.light_green, bg = c.none, format = f.none },
    NonText = { fg = c.darker_grey, bg = c.none, format = f.none },
    Normal = { fg = c.white, bg = c.charcoal },
    Number = { fg = c.purple, bg = c.none, format = f.none },
    Operator = { fg = c.magenta, bg = c.none, format = f.none },
    Pmenu = { fg = c.light_blue, bg = c.darker_grey, format = f.none },
    PmenuSbar = { fg = c.none, bg = c.grey, format = f.none },
    PmenuSel = { fg = c.yellow, bg = c.dark_grey, format = f.none },
    PmenuThumb = { fg = c.dark_grey, bg = c.white, format = f.none },
    PreCondit = { fg = c.purple, bg = c.none, format = f.none },
    PreProc = { fg = c.magenta, bg = c.none, format = f.none },
    Question = { fg = c.light_blue, bg = c.none, format = f.none },
    Repeat = { fg = c.magenta, bg = c.none, format = f.none },
    Search = { fg = c.black, bg = c.yellow, format = f.bold },
    SignColumn = { fg = c.none, bg = c.none, format = f.none },
    Special = { fg = c.purple, bg = c.none, format = f.none },
    SpecialKey = { fg = c.dark_grey, bg = c.none, format = f.none },
    SpellBad = { fg = c.white, bg = c.danger, format = f.none },
    SpellCap = { fg = c.charcoal, bg = c.orange, format = f.italic },
    SpellLocal = { fg = c.charcoal, bg = c.orange, format = f.italic },
    SpellRare = { fg = c.white, bg = c.danger, format = f.none },
    Statement = { fg = c.magenta, bg = c.none, format = f.none },
    StatusLine = { fg = c.light_grey, bg = c.charcoal, format = f.none },
    StatusLineNC = { fg = c.grey, bg = c.darker_grey, format = f.none },
    StorageClass = { fg = c.light_blue, bg = c.none, format = f.italic },
    String = { fg = c.yellow, bg = c.none, format = f.none },
    Structure = { fg = c.light_blue, bg = c.none, format = f.none },
    Substitute = { fg = c.black, bg = c.light_green, format = f.none },
    TabLine = { fg = c.light_grey, bg = c.dark_grey, format = f.underline },
    TabLineFill = { fg = c.none, bg = c.darker_grey, format = f.none },
    TabLineSel = { fg = c.none, bg = c.charcoal, format = f.bold },
    Tag = { fg = c.purple, bg = c.none, format = f.none },
    TermCursor = { fg = c.charcoal, bg = c.light_blue, format = f.none },
    TermCursorNC = { fg = c.charcoal, bg = c.light_blue, format = f.none },
    Title = { fg = c.white, bg = c.none, format = f.bold },
    Todo = { fg = c.yellow, bg = c.dark_grey, format = f.bold },
    Type = { fg = c.none, bg = c.none, format = f.none },
    Typedef = { fg = c.light_blue, bg = c.none, format = f.none },
    Underlined = { fg = c.none, bg = c.none, format = f.underline },
    VertSplit = { fg = c.darker_grey, bg = c.charcoal, format = f.none },
    Visual = { fg = c.none, bg = c.dark_grey, format = f.none },
    WarningMsg = { fg = c.white, bg = c.danger, format = f.none },
    Whitespace = { fg = c.dark_grey, bg = c.none, format = f.none },
    WinSeparator = { fg = c.darker_grey, bg = c.none, format = f.none },
    diffAdded = { fg = c.light_green, bg = c.none, format = f.none },
    diffFile = { fg = c.white, bg = c.none, format = f.bold },
    diffIndexLine = { fg = c.purple, bg = c.none, format = f.bold },
    diffLine = { fg = c.purple, bg = c.none, format = f.bold },
    diffRemoved = { fg = c.magenta, bg = c.none, format = f.none },
    diffSubname = { fg = c.yellow, bg = c.none, format = f.none },
    gitcommitHeader = { fg = c.light_blue, bg = c.none, format = f.none },
    gitcommitOverflow = { fg = c.magenta, bg = c.none, format = f.none },
    gitcommitSelectedFile = { fg = c.orange, bg = c.none, format = f.none },
    gitcommitSummary = { fg = c.white, bg = c.none, format = f.none },
    lCursor = { fg = c.charcoal, bg = c.light_blue, format = f.none },
}
-- Languages
local languages = {}

-- Default settings
local defaults = {
    theme = theme_base,
    disable_italics = false,
    transparent_background = true,
}

-- Setup
M.setup = function(usr_config)
    -- Clean nvim defaults and set needed options
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true

    -- Parse usr configs
    usr_config = usr_config and usr_config or {}
    local config = vim.tbl_deep_extend("keep", defaults, usr_config)

    -- Set the theme
    vim.g.colors_name = config.theme.name
    set_background(config.transparent_background, config.theme)
    if config.disable_italics then
        config.theme = remove_italics(config.theme)
    end
    set_theme(config.theme)
end

return M
