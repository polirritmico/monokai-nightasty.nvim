local utils = require("monokai-nightasty.utils")

local M = {}

M.url = "https://github.com/nvim-treesitter"
-- M.url = "https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local ret = {
    ["@annotation"] = "PreProc",
    ["@attribute"] = "PreProc", -- attribute annotations (e.g. Python decorators)
    ["@attribute.builtin"] = { fg = c.magenta, italic = true }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@boolean"] = "Boolean", -- boolean literals
    ["@character"] = "Character", -- character literals
    ["@character.special"] = "SpecialChar", -- special characters (e.g. wildcards)
    ["@comment"] = "Comment", -- line and block comments
    -- ["@comment.documentation"] = "Comment", -- comments documenting code
    -- ["@comment.error"] = { fg = c.bg, bg = c.error }, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED:`)
    -- ["@comment.hint"] = { fg = c.hint },
    -- ["@comment.info"] = { fg = c.info },
    -- ["@comment.note"] = { fg = c.bg, bg = c.note, nocombine = true }, -- note-type comments (e.g. `NOTE:`, `INFO:`, `XXX`)
    -- ["@comment.todo"] = { fg = c.black, bg = c.todo, nocombine = true }, -- todo-type comments (e.g. `TODO:`, `WIP:`, `FIXME:`)
    -- ["@comment.warning"] = { fg = c.warning }, -- line and block comments
    ["@constant"] = "Constant", -- constant identifiers
    ["@constant.builtin"] = "Special", -- built-in constant values
    ["@constant.macro"] = "Define", -- constants defined by the preprocessor
    ["@constructor"] = { fg = c.blue, italic = true }, -- constructor calls and definitions
    ["@diff.delta"] = "DiffChange", -- changed text (for diff files)
    ["@diff.minus"] = "DiffDelete", -- deleted text (for diff files)
    ["@diff.plus"] = "DiffAdd", -- added text (for diff files)
    ["@function"] = "Function", -- function definitions
    ["@function.builtin"] = { fg = c.green }, -- built-in functions
    ["@function.call"] = "@function", -- function calls
    ["@function.macro"] = "Macro", -- preprocessor macros
    ["@function.method"] = "Function", -- method definitions
    ["@function.method.call"] = "Function", -- method calls
    ["@keyword"] = { fg = c.magenta, style = opts.hl_styles.keywords }, -- keywords not fitting into specific categories
    ["@keyword.conditional"] = "Conditional", -- keywords related to conditionals (e.g. `if` / `else`)
    ["@keyword.conditional.htmldjango"] = { fg = c.orange },
    ["@keyword.conditional.ternary"] = "Conditional", -- ternary operator (e.g. `?` / `:`)
    ["@keyword.coroutine"] = "@keyword", -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ["@keyword.debug"] = "Debug", -- keywords related to debugging
    ["@keyword.directive"] = { fg = utils.darken(c.comment, 0.73), nocombine = true }, -- various preprocessor directives & shebangs
    ["@keyword.directive.define"] = "Define", -- preprocessor definition directives
    ["@keyword.exception"] = "Exception", -- keywords related to exceptions (e.g. `throw` / `catch`)
    ["@keyword.function"] = { fg = c.blue, italic = true }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.import"] = "Include", -- keywords for including modules (e.g. `import` / `from` in Python)
    ["@keyword.operator"] = "Operator", -- operators that are English words (e.g. `and` / `or`)
    ["@keyword.operator.htmldjango"] = "@keyword.conditional.htmldjango",
    ["@keyword.repeat"] = "Repeat", -- keywords related to loops (e.g. `for` / `while`)
    ["@keyword.repeat.htmldjango"] = "@keyword.conditional.htmldjango",
    ["@keyword.return"] = "@keyword", -- keywords like `return` and `yield`
    ["@keyword.storage"] = "StorageClass", -- modifiers that affect storage in memory or life-time

    ["@markup"] = "@none",
    ["@markup.environment"] = "Macro", -- environments (e.g. in LaTeX)
    ["@markup.environment.name"] = "Type",
    ["@markup.heading"] = "Title", -- headings, titles (including markers)
    ["@markup.heading.1.marker"] = "@tag", -- #, <h1>, <h2>, etc.
    ["@markup.heading.2.marker"] = "@tag",
    ["@markup.heading.3.marker"] = "@tag",
    ["@markup.heading.4.marker"] = "@tag",
    ["@markup.heading.5.marker"] = "@tag",
    ["@markup.heading.6.marker"] = "@tag",
    ["@markup.italic"] = { italic = true }, -- text with emphasis
    ["@markup.link"] = { fg = c.blue }, -- text references, footnotes, citations, etc.
    ["@markup.link.label"] = { fg = c.blue, underline = true }, -- link, reference descriptions
    ["@markup.link.label.symbol"] = "Identifier", -- Non-url links
    ["@markup.link.url"] = { fg = c.orange }, -- URL-style links. e.g. ![text](url)
    ["@markup.list"] = { fg = c.magenta }, -- list markers
    ["@markup.list.checked"] = "@markup.list", -- checked todo-style list markers [x]
    ["@markup.list.unchecked"] = "@markup.list", -- unchecked todo-style list markers [ ]
    ["@markup.math"] = "Special", -- math environments (e.g. `$ ... $` in LaTeX)
    ["@markup.quote"] = { fg = c.fg, bg = c.bg_float, italic = true }, -- block quotes
    ["@markup.raw"] = "String", -- literal or verbatim text (e.g., inline code)
    ["@markup.raw.block"] = { fg = c.grey }, -- literal or verbatim text (e.g., inline code)
    ["@markup.raw.delimiter.markdown_inline"] = { fg = c.purple }, -- inline backticks -> `
    ["@markup.raw.markdown_inline"] = { fg = c.purple }, -- inline commands (e.g. `example`)
    ["@markup.strikethrough"] = { strikethrough = true }, -- strikethrough text
    ["@markup.strong"] = { bold = true }, -- bold text
    ["@markup.underline"] = { underline = true }, -- underlined text (only for literal underline markup!)
    ["@module"] = { fg = c.blue }, -- modules or namespaces
    ["@none"] = {}, -- completely disable the highlight
    ["@number"] = "Number", -- numeric literals
    ["@number.float"] = "Float", -- floating-point number literals
    ["@operator"] = "Operator", -- symbolic operators (e.g. `+` / `*`)
    ["@property"] = { fg = c.fg_dark }, -- the key in key/value pairs
    ["@punctuation.bracket"] = { fg = c.magenta }, -- brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.delimiter"] = { fg = c.grey }, -- delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.special"] = "Delimiter", -- special symbols (e.g. `{}` in string interpolation)
    ["@string"] = "String", -- string literals
    ["@string.documentation"] = {}, -- string documenting code (e.g. Python docstrings)
    ["@string.escape"] = { fg = c.purple }, -- escape sequences
    ["@string.regexp"] = { fg = c.orange }, -- regular expressions
    ["@tag"] = { fg = c.magenta }, -- xml tag names
    ["@tag.attribute"] = { fg = c.blue, italic = true }, -- xml tag attributes
    ["@tag.delimiter"] = { fg = c.grey_light }, -- xml tag delimiters
    ["@type"] = { fg = c.blue }, -- type or class definitions and annotations
    ["@type.builtin"] = { fg = c.blue, italic = true }, -- built-in types
    ["@type.definition"] = "Typedef", -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    ["@type.qualifier"] = "@keyword", -- type qualifiers (e.g. `const`)
    ["@variable"] = { fg = c.fg, style = opts.hl_styles.variables }, -- any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = c.grey_light, italic = true }, -- built-in variable names (e.g. `this`, `self`)
    ["@variable.member"] = { fg = c.fg }, -- object and struct fields
    ["@variable.parameter"] = { fg = c.orange, italic = true }, -- parameters of a function

    -- ["@string.special"] = {}, -- other special strings (e.g. dates)
    -- ["@string.special.symbol"] = {}, -- symbols or atoms
    -- ["@string.special.url"] = {}, -- URIs (e.g. hyperlinks)
    -- ["@string.special.path"] = {}, -- filenames
    -- ["@module.builtin"] = {}, -- built-in modules or namespaces
    -- ["@label"] = {}, -- GOTO and other labels (e.g. `label:` in C), including heredoc labels
  }

  if opts.color_headers then
    for i, color in ipairs(c.rainbow) do
      ret["@markup.heading." .. i] = { fg = color, bold = true }
    end
  else
    for i = 1, 6 do
      ret["@markup.heading." .. i] = "Title"
    end
  end

  return ret
end

return M
