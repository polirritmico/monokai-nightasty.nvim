-------------------
-- Monokai Theme -- 
-------------------

local vim = vim
local M = {}

-- Set color palette and styles
M.theme_name = "monokai"

M.color = {
    black = "#000000",
    blood_red = "#5F0000",
    bright_blue = "#0087FF",
    charcoal = "#262626",
    danger = "#FF005F",
    dark_green = "#005F00",
    dark_grey = "#5F5F5F",
    dark_red = "#870000",
    darker_grey = "#444444",
    grey = "#8A8A8A",
    light_blue = "#62D8F1",
    light_charcoal = "#2B2B2B",
    light_green = "#A4E400",
    light_grey = "#BCBCBC",
    magenta = "#FC1A70",
    off_white = "#CCCCCC",
    olive = "#5F8700",
    orange = "#FF9700",
    purple = "#AF87FF",
    purple_slate = "#5F5F87",
    white = "#FFFFFF",
    yellow = "#FFFF87",

    none = "NONE",
}

M.format = {
    bold = "bold",
    italic = "italic",
    underline = "underline",
    bold_underline = "bold,underline",
    none = "NONE",
}

-- Set background color
M.background = M.color.charcoal

-- Set italics
M.enable_italics = true

-- Helper functions
local function set_style(group, style)
    local format = style.format and "gui = " .. style.format or "gui = NONE"
    local fg = style.fg and "guifg = " .. style.fg or "guifg = NONE"
    local bg = style.bg and "guibg = " .. style.bg or "guibg = NONE"
    vim.cmd(
    "highlight " .. group .. " " .. fg .. " " .. bg .. " ".. format
    )
end

-- Set themes
local c = M.color
local f = M.format
M.theme_base = {
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
    diffAdded = { fg = c.light_green, bg = c.none, format = f.none },
    diffFile = { fg = c.white, bg = c.none, format = f.bold },
    diffIndexLine = { fg = c.purple, bg = c.none, format = f.bold },
    diffLine = { fg = c.purple, bg = c.none, format = f.bold },
    diffRemoved = { fg = c.magenta, bg = c.none, format = f.none },
    diffSubname = { fg = c.yellow, bg = c.none, format = f.none },
    EndOfBuffer = { fg = c.darker_grey, bg = c.none, format = f.none },
    Error = { fg = c.white, bg = c.danger, format = f.none },
    ErrorMsg = { fg = c.white, bg = c.danger, format = f.none },
    Exception = { fg = c.magenta, bg = c.none, format = f.bold },
    Float = { fg = c.purple, bg = c.none, format = f.none },
    FoldColumn = { fg = c.grey, bg = c.none, format = f.none },
    Folded = { fg = c.grey, bg = c.none, format = f.none },
    Function = { fg = c.light_green, bg = c.none, format = f.none },
    gitcommitHeader = { fg = c.light_blue, bg = c.none, format = f.none },
    gitcommitOverflow = { fg = c.magenta, bg = c.none, format = f.none },
    gitcommitSelectedFile = { fg = c.orange, bg = c.none, format = f.none },
    gitcommitSummary = { fg = c.white, bg = c.none, format = f.none },
    Identifier = { fg = c.light_blue, bg = c.none, format = f.none },
    IncSearch = { fg = c.black, bg = c.purple, format = f.bold_underline },
    Include = { fg = c.magenta, bg = c.none, format = f.none },
    Keyword = { fg = c.magenta, bg = c.none, format = f.none },
    Label = { fg = c.yellow, bg = c.none, format = f.none },
    LineNr = { fg = c.dark_grey, bg = c.none, format = f.none },
    LineNrBe = { fg = c.light_green, format = f.none },
    lCursor = { fg = c.charcoal, bg = c.light_blue, format = f.none },
    Macro = { fg = c.magenta, bg = c.none, format = f.none },
    MatchParen = { fg = c.magenta, bg = c.none, format = f.bold_underline },
    ModeMsg = { fg = c.white, bg = c.none, format = f.bold },
    MoreMsg = { fg = c.light_green, bg = c.none, format = f.none },
    NonText = { fg = c.darker_grey, bg = c.none, format = f.none },
    Normal = { fg = c.white, bg = c.none },
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
}

local set_theme = function(theme)
    for highlight_group, style in pairs(theme) do
        set_style(highlight_group, style)
    end
end

-- Setup
M.setup = function()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = M.theme_name
    set_theme(M.theme_base)
end

return M
