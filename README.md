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

![Monokai-NighTasty](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/57bcbc64-cc1a-4f8f-8ebe-75f4bcd6c96d)

<!-- panvimdoc-ignore-end -->

## 🌆 Features

- Infused with the Monokai palette for a vibrant, distraction-free coding
  experience.
- Avoid eye strain by seamlessly toggling between clear and dark styles at
  your fingertips, whether you're at your station or out in the wild.
- Support for popular plugins like treesitter, cmp, telescope, gitsigns,
  lualine, indent-blankline, which-key, notify, noice, todo-comments and more.
- Highly customizable for your coding needs.

<!-- panvimdoc-ignore-start -->

## 📷 Screenshots

### 🌙 Dark Theme

![Dark Theme](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/a35c81ba-5e54-4b0f-b048-a70d407c2ba3)

### ☀️ Light Theme

![Light Theme](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/9af725e4-9251-457b-ac8e-c6fe38d7269d)

### 💨 Dark Theme with transparent background:

![Transparent Dark Theme](https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/438a5768-b9bc-47c5-856d-8549981eb6b3)

## 📽 Settings in action

https://github.com/polirritmico/monokai-nightasty.nvim/assets/24460484/51fb86fe-8ff8-4f90-b7fe-fbe69184a637

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

No need to use the `setup()` function, just set the `colorscheme`:

```lua
vim.opt.background = "dark" -- default to dark or light style
vim.cmd.colorscheme("monokai-nightasty")
```

#### 💡 Toggle function

The Dark/light styles could be toggled by calling the provided function:

```vim
:MonokaiToggleLight
```

In **Lua**:

```lua
require("monokai-nightasty").toggle()
```

### Lualine

```lua
require("lualine").setup({
    options = { theme = "monokai-nightasty" },
})
```

### ⚙️ Advanced configuration

> ⚠️ Set the configuration **BEFORE** calling `colorscheme monokai-nightasty`.

#### Full defaults:

Monokai Nightasty comes with these defaults:

```lua
{
    dark_style_background = "default", -- default, dark, transparent, #color
    light_style_background = "default", -- default, dark, transparent, #color
    terminal_colors = true, -- Set the colors used when opening a `:terminal`
    color_headers = false, -- Enable header colors for each header level (h1, h2, etc.)
    hl_styles = {
        -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
        -- Background styles for sidebars (panels) and floating windows:
        floats = "default", -- default, dark, transparent
        sidebars = "default", -- default, dark, transparent
    },
    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`

    hide_inactive_statusline = false, -- Hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = true, -- Lualine headers will be bold or regular.
    lualine_style = "default", -- "dark", "light" or "default" (Follows dark/light style)

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with the theme ColorScheme table
    on_colors = function(colors) end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with the theme Highlights and ColorScheme tables
    on_highlights = function(highlights, colors) end,
}
```


#### Full configuration example (for Lazy):

```lua
return {
    "polirritmico/monokai-nightasty.nvim",
    lazy = false,
    priority = 1000,
    keys = {
        { "<leader>tt", "<cmd>MonokaiToggleLight<cr>", desc = "Monokai-Nightasty: Toggle dark/light theme." },
    },
    opts = {
        dark_style_background = "transparent", -- default, dark, transparent, #color
        light_style_background = "default", -- default, dark, transparent, #color
        color_headers = true, -- Enable header colors for each header level (h1, h2, etc.)
        lualine_bold = true, -- Lualine a and z sections font width
        lualine_style = "default", -- "dark", "light" or "default" (Follows dark/light style)
        -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
        hl_styles = {
            keywords = { italic = true },
            comments = { italic = true },
        },

        --- You can override specific color/highlights. Theme color values
        --- in `extras/palettes`. Also could be any hex RGB color you like.
        on_colors = function(colors)
            -- Custom color only for light theme
            local current_is_light = vim.o.background == "light"
            colors.comment = current_is_light and "#2d7e79" or colors.grey
            -- Custom color only for dark theme
            colors.border = not current_is_light and colors.magenta or colors.border
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

        require("monokai-nightasty").load(opts)
    end,

}
```

---

## 🔍 Colors and Highlights

How the plugin setup the highlights and colors under the hood:

1. `colors` are loaded from the base palette. The colors of the **light style**
   are set in `colors.light_palette`. If `vim.o.background == "light"` is
   detected, then the `default` palette is overridden with the light palette
   values.

2. Then, `colors` is extended and adjusted following the configuration settings.

3. After that, `config.on_colors(colors)` is called, overriding any matching
   color.

4. The highlight groups are set using the generated `colors`.

5. Finally, `config.on_highlights(highlights, colors)` can be used to override
   highlight groups.

To get the name of a highlight group or to find the used color, here are some
alternatives:

1. Use `:Inspect` to get info of the highlight group at the current position.
2. Check the generated palettes in the [extras](#-extras).
3. For the theme with the color names instead of the colors code, you could
   check directly the `theme.lua` or `colors.lua` files inside the
   `lua/monokai-nightasty/` directory.

You could set colors for `light` or `dark` themes using boolean logic:

```lua
on_colors = function(colors)
    local is_light = vim.o.background == "light"
    colors.comment = is_light and "#2d7e79" or colors.grey
    colors.border = not is_light and colors.magenta or colors.border
end,
```

---

## 🧩 Extras

Currently this extra files are generated:

<!-- extras:start -->
- [Monokai Nightasty Palettes](https://github.com/polirritmico/monokai-nightasty.nvim/tree/main/extras/palettes) ([palettes](extras/palettes))
- [Kitty](https://sw.kovidgoyal.net/kitty/) ([kitty](extras/kitty))
- [Tmux](https://github.com/tmux/tmux/wiki) ([tmux](extras/tmux))
- [Zathura](https://pwmt.org/projects/zathura/) ([zathura](extras/zathura))
<!-- extras:end -->

The Monokai Nightasty Palette is a file with the used `colors` and `highlights`.

To use the generated config files with the corresponding external tool, check
the `extras` folder, copy, link or reference the file in each setting. Refer to
the respective program documentation.

### Tmux

Just source the theme file:

```bash
source-file 'path/to/monokai-nightasty_dark.tmux'
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

### 🚀 Using with other plugins

You could import the color palette to use with other plugins:

```lua
local colors = require("monokai-nightasty.colors").setup()

some_plugin_config.title = colors.blue_light
example_plugin_config = {
    foo = colors.bg_dark,
    bar = colors.blue_light,
}
```

Some color utility functions are available for your use:

```lua
local colors = require("monokai-nightasty.colors").setup()
local util = require("monokai-nightasty.util")

some_plugin_config.example = util.lighten(colors.bg, 0.5)
some_plugin_config.another = util.darken(colors.bg, 0.3)
```


## 🎨 Color Palettes

### 🌃 Dark Style

<!-- panvimdoc-ignore-start -->

| Color name | Hex code  | Render                                                        |
|------------|-----------|---------------------------------------------------------------|
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
|------------|-----------|---------------------------------------------------------------|
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

Enjoy
