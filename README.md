# 🫖 Monokai NighTasty

<!-- panvimdoc-ignore-start -->

![Pull Requests](https://img.shields.io/badge/Pull_Requests-Welcome-a4e400?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/polirritmico/monokai-nightasty.nvim/main?style=flat-square&color=62d8f1)
![GitHub issues](https://img.shields.io/github/issues/polirritmico/monokai-nightasty.nvim?style=flat-square&color=fc1a70)

<!-- panvimdoc-ignore-end -->

## 🐧 Description

A dark/light theme for Neovim based on the Monokai color palette. This theme is
born from a mix between the code of the great
[tokyonight.nvim](https://github.com/folke/tokyonight.nvim) and the palette of
the flavorful
[vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty).

<!-- panvimdoc-ignore-start -->

![Monokai-NighTasty](https://github.com/user-attachments/assets/92d3927d-6c37-4ece-b357-f2dfad76d900)

<!-- panvimdoc-ignore-end -->

## 🌆 Features

- Infused with the Monokai palette for a vibrant, distraction-free coding
  experience.
- Avoid eye strain by seamlessly toggling between clear and dark styles at your
  fingertips, whether you're at your station or out in the wild.
- Highly customizable for your coding needs.
- Support for popular plugins like treesitter, cmp, telescope, gitsigns,
  lualine, indent-blankline, which-key, notify, noice, todo-comments and more.

### 🚀 Supported plugins

<details>
<summary> Click to expand </summary>

<!-- plugins:start -->

| Plugin                                                                                | Highlights Module                                                                                                                              |
| ------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim)                                | [aerial](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/aerial.lua)                         |
| [ale](https://github.com/dense-analysis/ale)                                          | [ale](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/ale.lua)                               |
| [alpha-nvim](https://github.com/goolord/alpha-nvim)                                   | [alpha](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/alpha.lua)                           |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim)                                  | [barbar](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/barbar.lua)                         |
| [blink.cmp](https://github.com/saghen/blink.cmp)                                      | [blink](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/blink.lua)                           |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                         | [bufferline](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/bufferline.lua)                 |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)                           | [dashboard](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/dashboard.lua)                   |
| [flash.nvim](https://github.com/folke/flash.nvim)                                     | [flash](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/flash.lua)                           |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua)                                        | [fzf](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/fzf.lua)                               |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                           | [gitsigns](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/gitsigns.lua)                     |
| [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)                     | [headlines](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/headlines.lua)                   |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)       | [indent-blankline](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/indent-blankline.lua)     |
| [justinmk/dirvish.vim](https://github.com/justinmk/vim-dirvish)                       | [dirvish](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/dirvish.lua)                       |
| [lazy.nvim](https://github.com/folke/lazy.nvim)                                       | [lazy](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/lazy.lua)                             |
| [leap.nvim](https://github.com/ggandor/leap.nvim)                                     | [leap](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/leap.lua)                             |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)                               | [lspsaga](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/lspsaga.lua)                       |
| [mini.diff](https://github.com/echasnovski/mini.diff)                                 | [mini_diff](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/mini_diff.lua)                   |
| [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns)                     | [mini_hipatterns](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/mini_hipatterns.lua)       |
| [mini.icons](https://github.com/echasnovski/mini.icons)                               | [mini_icons](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/mini_icons.lua)                 |
| [mini.indentscope](https://github.com/echasnovski/mini.indentscope)                   | [mini_indentscope](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/mini_indentscope.lua)     |
| [mini.statusline](https://github.com/echasnovski/mini.statusline)                     | [mini_statusline](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/mini_statusline.lua)       |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                       | [neo-tree](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/neo-tree.lua)                     |
| [neogit](https://github.com/NeogitOrg/neogit)                                         | [neogit](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/neogit.lua)                         |
| [neotest](https://github.com/nvim-neotest/neotest)                                    | [neotest](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/neotest.lua)                       |
| [noice.nvim](https://github.com/folke/noice.nvim)                                     | [noice](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/noice.lua)                           |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                       | [cmp](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/cmp.lua)                               |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)                                | [dapui](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/dapui.lua)                           |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic)                                  | [navic](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/navic.lua)                           |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                                | [notify](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/notify.lua)                         |
| [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)                        | [scrollbar](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/scrollbar.lua)                   |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)                           | [nvim-tree](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/nvim-tree.lua)                   |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | [treesitter-context](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/treesitter-context.lua) |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)         | [rainbow](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/rainbow.lua)                       |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)  | [render-markdown](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/render-markdown.lua)       |
| [snacks.nvim](https://github.com/folke/snacks.nvim)                                   | [snacks](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/snacks.lua)                         |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                    | [telescope](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/telescope.lua)                   |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)                     | [todo-comments](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/todo-comments.lua)           |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                                 | [trouble](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/trouble.lua)                       |
| [undotree](https://github.com/mbbill/undotree)                                        | [undotree](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/undotree.lua)                     |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                            | [gitgutter](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/gitgutter.lua)                   |
| [vim-sneak](https://github.com/justinmk/vim-sneak)                                    | [sneak](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/sneak.lua)                           |
| [vimwiki](https://github.com/vimwiki/vimwiki)                                         | [vimwiki](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/vimwiki.lua)                       |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                             | [which-key](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/which-key.lua)                   |
| [yanky.nvim](https://github.com/gbprod/yanky.nvim)                                    | [yanky](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights/yanky.lua)                           |

<!-- plugins:end -->

</details>

<!-- panvimdoc-ignore-start -->

## 📷 Screenshots

<details>
<summary> Click to expand </summary>

### 🌙 Dark Theme

![Dark Theme](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/a35c81ba-5e54-4b0f-b048-a70d407c2ba3)

### ☀️ Light Theme

![Light Theme](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/9af725e4-9251-457b-ac8e-c6fe38d7269d)

### 💨 Dark Theme with transparent background:

![Transparent Dark Theme](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/438a5768-b9bc-47c5-856d-8549981eb6b3)

## 📽 Settings in action

https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/51fb86fe-8ff8-4f90-b7fe-fbe69184a637

</details>

<!-- panvimdoc-ignore-end -->

## 📋 Requirements

- [Neovim](https://neovim.io/) >= 0.9.0
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) > 0.9.2

## 📦 Installation

Install with your package manager.

```lua
-- Lazy
{
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
}
```

## 🛠️ Usage/Configuration

#### Basic usage

```lua
vim.opt.background = "dark" -- default to dark or light style

local opts = {...} -- options should be setted through a setup call:
require("monokai-nightasty").setup(opts) -- ...and then load the theme:
require("monokai-nightasty").load()

-- As an alternative, pass the options directly into load and it will run setup
-- the first time it is executed:
require("monokai-nightasty").load(opts)
```

```vim
:set background=dark
:colorscheme monokai-nightasty
```

<!-- prettier-ignore-start -->
> [!TIP]
> 📌 **TLDR:** Check the [Configuration examples](#-configuration-examples).
<!-- prettier-ignore-end -->

---

#### 💡 Toggle function

The plugin provides a toggle function to change the dark/light styles:

```lua
require("monokai-nightasty").toggle()
```

```vim
:MonokaiToggleLight
```

### ⚙️ Configuration details

> ⚠️ Set the configuration **BEFORE** loading the theme

#### Spec:

<!-- panvimdoc-ignore-start -->
<details>
<summary> Click to see the configuration spec </summary>
<!-- panvimdoc-ignore-end -->

<!-- config-spec:start -->

```lua
---@class monokai.Config
---@field dark_style_background monokai.BackgroundConfig default, dark, transparent, #RRGGBB
---@field light_style_background monokai.BackgroundConfig default, dark, transparent, #RRGGBB
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: monokai.Highlights, colors: ColorScheme)
---@field hl_styles monokai.HighlightStylesConfig Styles to be applied to selected syntax groups
---@field color_headers boolean Enable header colors for each header level (h1, h2, etc.)
---@field dim_inactive boolean dims inactive windows
---@field lualine_bold boolean Lualine headers will be bold or regular
---@field lualine_style monokai.LualineStyleConfig Possible values: "dark", "light" or "default" (default follows dark/light style)
---@field markdown_header_marks boolean Add headers marks highlights (the `#` character) to Treesitter highlight query
---@field terminal_colors boolean|table|fun(colors: ColorScheme):table
---@field auto_enable_plugins boolean Automatically enable supported plugins through lazy.nvim
---@field plugins table<string, boolean> List of manually enabled/disabled plugins.
---@field cache boolean Enables/Disable the cache
```

<!-- config-spec:end -->

</details>

---

#### Full defaults:

Monokai Nightasty comes with these defaults:

<!-- defaults:start -->

````lua
M.defaults = {
  dark_style_background = "default", -- default, dark, transparent, #RRGGBB
  light_style_background = "default", -- default, dark, transparent, #RRGGBB
  hl_styles = {
    -- Custom styles for this groups: (See `:help nvim_set_hl`, Parameters, {val} for supported keys)
    comments = { italic = true },
    keywords = { italic = false },
    functions = {},
    variables = {},
    -- Background styles for floating windows and sidebars (panels):
    floats = "default", -- default, dark, transparent
    sidebars = "default", -- default, dark, transparent
  },

  color_headers = false, -- Enable header colors for each header level (h1, h2, etc.)
  dim_inactive = false, -- dims inactive windows
  lualine_bold = true, -- Lualine headers will be bold or regular
  lualine_style = "default", -- "dark", "light" or "default" (default follows dark/light style)
  markdown_header_marks = false, -- Add headers marks highlights (the `#` character) to Treesitter highlight query

  -- Set the colors for terminal-mode (`:h terminal-config`). `false` to disable it.
  -- Pass a table with `terminal_color_x` values: `{ terminal_color_8 = "#e6e6e6" }`.
  -- Also accepts a function:
  -- ```lua
  -- function(colors) return { fg = colors.fg_dark, terminal_color_4 = "#ff00ff" } end
  -- ```
  -- > Use the `fg` key to apply colors to the normal text.
  terminal_colors = true,

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with the Monokai ColorScheme table.
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with the Monokai Highlights and ColorScheme table.
  ---@param highlights monokai.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  -- When `true` the theme will be cached for better performance.
  cache = true,

  --- Automatically enable highlights for supported plugins in the lazy.nvim config.
  auto_enable_plugins = true,

  --- List of manually enabled/disabled plugins.
  --- Check the supported plugins here:
  ---   https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/lua/monokai-nightasty/highlights
  ---@type table<string, boolean>
  plugins = {
    -- Use the ["<repository name>"]. For example:
    -- ["telescope.nvim"] = true,

    -- `all`: enable or disable all plugins. By default if lazy.nvim is not loaded enable all the plugins
    all = package.loaded.lazy == nil,
  },
}
````

<!-- defaults:end -->

### 📐 Configuration examples

#### Base configuration with a bit of customization:

<!-- panvimdoc-ignore-start -->
<details>
<summary> Click to see the example </summary>
<!-- panvimdoc-ignore-end -->

```lua
{
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  keys = {
    { "<leader>tt", "<Cmd>MonokaiToggleLight<CR>", desc = "Monokai-Nightasty: Toggle dark/light theme." },
  },
  ---@module "monokai-nightasty"
  ---@type monokai.UserConfig
  opts = {
    dark_style_background = "default", -- default | dark | transparent | #RRGGBB
    light_style_background = "default", -- default | dark | transparent | #RRGGBB
    markdown_header_marks = true,
    -- hl_styles = { comments = { italic = false } },
    terminal_colors = function(colors) return { fg = colors.fg_dark } end,
  },
  config = function(_, opts)
    vim.opt.cursorline = true -- Highlight line at the cursor position
    vim.o.background = "dark" -- Default to dark theme

    require("monokai-nightasty").load(opts)
  end,
}
```

</details>

#### Full configuration:

<!-- panvimdoc-ignore-start -->
<details>
<summary> Click to see the example </summary>
<!-- panvimdoc-ignore-end -->

```lua
return {
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  keys = {
    { "<leader>tt", "<Cmd>MonokaiToggleLight<CR>", desc = "Monokai-Nightasty: Toggle dark/light theme." },
  },
  ---@module "monokai-nightasty"
  ---@type monokai.UserConfig
  opts = {
    dark_style_background = "transparent", -- default, dark, transparent, #RRGGBB
    light_style_background = "default", -- default, dark, transparent, #RRGGBB
    color_headers = true, -- Enable header colors for each header level (h1, h2, etc.)
    lualine_bold = true, -- Lualine a and z sections font width
    lualine_style = "default", -- "dark", "light" or "default" (Follows dark/light style)
    markdown_header_marks = true, -- Add headers marks highlights (the `#` character) to Treesitter highlight query
    -- Style to be applied to selected syntax groups. See `:help nvim_set_hl`
    hl_styles = {
      keywords = { italic = true },
      comments = { italic = true },
      floats = "dark",
    },

    -- This also could be a table like this: `terminal_colors = { Normal = { fg = "#e6e6e6" } }`
    terminal_colors = function(colors)
      return { fg = colors.fg_dark }
    end,

    --- You can override specific color/highlights. Theme color values
    --- in `extras/palettes`. Also could be any hex RGB color you like.
    on_colors = function(colors)
      if vim.o.background == "light" then
        -- Custom colors for light theme
        colors.comment = "#2d7e79"
        colors.lualine.normal_bg = "#7ebd00"
      else
        -- Custom colors for dark theme
        colors.border = colors.magenta
        colors.lualine.normal_bg = colors.green
      end
    end,

    on_highlights = function(highlights, colors)
      -- You could add styles like bold, underline, italic
      highlights.TelescopeSelection = { bold = true }
      highlights.TelescopeBorder = { fg = colors.grey }
      highlights["@lsp.type.property.lua"] = { fg = colors.fg }
    end,
  },
  config = function(_, opts)
    -- Highlight line at the cursor position
    vim.opt.cursorline = true

    -- Default to dark theme
    vim.o.background = "dark"  -- dark | light

    -- Open new Nvim instances with the light theme when the sun hits the screen
    local date_output = vim.api.nvim_exec2("!date +'\\%H\\%M'", { output = true })
    local system_time = tonumber(string.match(date_output["output"], "%d%d%d%d"))
    if system_time >= 1345 and system_time < 1630 then
      vim.o.background = "light"
    end

    require("monokai-nightasty").load(opts)
  end,
}
```

</details>

---

### 🍚 Customization: Change a color/style:

There are two main options: change the color definition or the specific
highlight.

#### Change a color definition:

Simple use the `on_colors` option:

```lua
opts = {
  on_colors = function(colors)
    colors.charcoal_medium = "#455455"
  end
}
```

This would be applied before the highlights generation, so any highlight group
that uses the color is going to use the new color.

#### Change a specific highlight:

Simple use the `on_highlights` option:

```lua
opts = {
  on_highlights(hl, c)
    hl["Folded"] = { fg = c.orange, bg = c.bg_float, italic = false },
    hl["LineNr"] = { fg = c.grey },
  end,
}
```

> To get the highlight name, move the cursor over it and run `:Inspect` or check
> the [plugin modules](#-supported-plugins).

#### Independent light/dark theme customization:

<!-- panvimdoc-ignore-start -->
<details>
<summary> Set colors for each theme using boolean logic: </summary>
<!-- panvimdoc-ignore-end -->

```lua
{
  on_colors = function(colors)
    local is_light = vim.o.background == "light"
    colors.comment = is_light and "#2d7e79" or colors.grey
    colors.border = not is_light and colors.magenta or colors.border

    if is_light then
      colors.orange = "#f59263",
    end
  end,

  on_highlights = function(highlights, colors)
    local is_light = vim.o.background == "light"

    highlights["@variable.member.lua"] = {
      fg = is_light and colors.magenta or colors.grey,
      underline = is_light,
    },
  end,
}
```

</details>

---

## 🔍 Colors and Highlights

How the plugin setup the highlights and colors under the hood:

1. `colors` are loaded from the base palette based on the current
   `vim.o.background` value ("`dark`"/"`light`").

2. Then, `colors` is extended and adjusted following the configuration settings.

3. After that, `opts.on_colors(colors)` is called, overriding any matching
   color.

4. The highlight groups are set using the generated `colors`.

5. `opts.on_highlights(highlights, colors)` can be used to override highlight
   groups.

If `opts.cache` is `true` and the current configuration has no changes, jump
straight to step 5 to apply the `on_highlights` function.

> To get the name of a highlight group or to find the used color, here are some
> alternatives:
>
> 1. Use `:Inspect` to get info of the highlight group at the current position.
> 2. Check the generated palettes in the [extras](#-extras).
> 3. For plugins specifics check each [module](#-supported-plugins) in the
>    `highlights` directory.

---

## 🧩 Extras

Currently this extra files are generated:

<!-- extras:start -->

- [Monokai Nightasty Palettes](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/extras/palettes)
  ([palettes](extras/palettes))
- [Kitty](https://sw.kovidgoyal.net/kitty/) ([kitty](extras/kitty))
- [Konsole](https://invent.kde.org/utilities/konsole)
  ([konsole](extras/konsole))
- [Lazygit](https://github.com/jesseduffield/lazygit)
  ([lazygit](extras/lazygit))
- [Tmux](https://github.com/tmux/tmux/wiki) ([tmux](extras/tmux))
- [Zathura](https://pwmt.org/projects/zathura/) ([zathura](extras/zathura))

<!-- extras:end -->

The Monokai Nightasty Palette is a file with the used `colors` and `highlights`.

To use the generated config files with the corresponding external tool, check
the `extras` folder, copy, link or reference the file in each setting. Refer to
the respective program documentation.

### Markdown files

Nvim Tressiter no longer provide highlight captures for the headers `#` marks.
This plugin will provide them for as long as they work, or until nvim-treesitter
provides any way to highlight them.

To enable this feature, set the `markdown_header_marks` option to `true`
(defaults to `false`).

<!-- panvimdoc-ignore-start -->

| Disabled                                                                                                                                 | Enabled                                                                                                                                 |
| ---------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| ![Disabled TS custom query](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/f60e3df9-c276-4c38-be69-d7f48095fe75) | ![Enabled TS custom query](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/898a4b42-828b-4dae-b82c-e90206910ccc) |

<!-- panvimdoc-ignore-end -->

### Tmux

<!-- panvimdoc-ignore-start -->
<details>
<summary> Config details </summary>
<!-- panvimdoc-ignore-end -->

Just source the theme file:

```bash
source-file 'path/to/monokai-nightasty_dark.tmux'
# or the rounded style:
source-file 'path/to/monokai-nightasty_dark-rounded.tmux'
```

#### Fix `undercurls` in [Tmux](https://github.com/tmux/tmux)

If the undercurls or colors are not being properly displayed within
[Tmux](https://github.com/tmux/tmux), add the following to your config file:

```sh
# Undercurl
set -as terminal-features ",xterm-256color:RGB" # or: set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

</details>

## 🔌 Using with other plugins

You could import the color palette to use with other plugins:

```lua
local opts = require("monokai-nightasty.config").extend()
local colors = require("monokai-nightasty.colors").setup(opts)

some_plugin_config.title = colors.blue
example_plugin_config = {
  foo = colors.bg_dark,
  bar = colors.green,
  buz = opts.transparent and colors.none or colors.bg
}
```

Some color utility functions are available for use:

```lua
local opts = require("monokai-nightasty.config").extend()
local colors = require("monokai-nightasty.colors").setup(opts)
local utils = require("monokai-nightasty.utils")

some_plugin_config.example = utils.lighten(colors.bg, 0.5)
some_plugin_config.another = utils.darken(colors.bg, 0.3)
```

## 🎨 Color Palettes

### 🌃 Dark Style

<!-- panvimdoc-ignore-start -->

| Color name | Hex code  | Render                                                        |
| ---------- | --------- | ------------------------------------------------------------- |
| Yellow     | `#ffff87` | ![#ffff87](https://place-hold.it/100x40/ffff87/111111?text=+) |
| Purple     | `#af87ff` | ![#af87ff](https://place-hold.it/100x40/af87ff/000000?text=+) |
| Green      | `#a4e400` | ![#a4e400](https://place-hold.it/100x40/a4e400/000000?text=+) |
| Blue       | `#62d8f1` | ![#62d8f1](https://place-hold.it/100x40/62d8f1/000000?text=+) |
| Magenta    | `#fc1a70` | ![#fc1a70](https://place-hold.it/100x40/fc1a70/000000?text=+) |
| Orange     | `#ff9700` | ![#ff9700](https://place-hold.it/100x40/ff9700/000000?text=+) |

<!-- panvimdoc-ignore-end -->

<!-- panvimdoc-include-comment

| Color name | Hex code  |
|------------|-----------|
| Yellow     | `#ffff87` |
| Purple     | `#af87ff` |
| Green      | `#a4e400` |
| Blue       | `#62d8f1` |
| Magenta    | `#fc1a70` |
| Orange     | `#ff9700` |

-->

### 🏙️ Light Style

<!-- panvimdoc-ignore-start -->

| Color name | Hex code  | Render                                                        |
| ---------- | --------- | ------------------------------------------------------------- |
| Yellow     | `#ff8f00` | ![#ff8f00](https://place-hold.it/100x40/ff8f00/000000?text=+) |
| Purple     | `#6054d0` | ![#6054d0](https://place-hold.it/100x40/6054d0/000000?text=+) |
| Green      | `#4fb000` | ![#4fb000](https://place-hold.it/100x40/4fb000/000000?text=+) |
| Blue       | `#00b3e3` | ![#00b3e3](https://place-hold.it/100x40/00b3e3/000000?text=+) |
| Magenta    | `#ff004b` | ![#ff004b](https://place-hold.it/100x40/ff004b/000000?text=+) |
| Orange     | `#ff4d00` | ![#ff4d00](https://place-hold.it/100x40/ff4d00/000000?text=+) |

<!-- panvimdoc-ignore-end -->

<!-- panvimdoc-include-comment

| Color name | Hex code  |
|------------|-----------|
| Yellow     | `#ff8f00` |
| Purple     | `#6054d0` |
| Green      | `#4fb000` |
| Blue       | `#00b3e3` |
| Magenta    | `#ff004b` |
| Orange     | `#ff4d00` |

-->

## 🌱 Contributions

This plugin is made mainly for my personal use, but suggestions, issues, or pull
requests are very welcome.

**Enjoy**
