# Monokai NighTasty 🫖

![Pull Requests](https://img.shields.io/badge/Pull_Requests-Welcome-_?style=flat-square&labelColor=fc1a70&color=ff9700)
![GitHub last commit](https://img.shields.io/github/last-commit/polirritmico/monokai-nightasty.nvim/main?style=flat-square&labelColor=ffff87&color=a4e400)
![GitHub issues](https://img.shields.io/github/issues/polirritmico/monokai-nightasty.nvim?style=flat-square&labelColor=62d8f1&color=af87ff)

<!-- ![Pull Requests](https://img.shields.io/badge/PR-Welcome-brighgreen) -->
<!-- ![GitHub last commit](https://img.shields.io/github/last-commit/polirritmico/monokai-nightasty.nvim/main) -->
<!-- ![GitHub issues](https://img.shields.io/github/issues/polirritmico/monokai-nightasty.nvim) -->

A dark/light theme for Neovim based on the Monokai color palette. The code is
based on the excelent
[tokyonight.nvim](https://github.com/folke/tokyonight.nvim) plugin and the
palette is adapted from the flavorful
[vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty) plugin.
Written in Lua, it includes support for lsp, treesitter, a lot of plugins and
additional config files for tmux, zathura and others.


## Features

- Avoid eye strain by seamlessly toggling between clear and dark styles at
  your fingertips, whether you're at your station or out in the wild.
- Highly customizable for your coding needs.
- Infused with the Monokai palette for a vibrant, distraction-free coding
  experience.

![Showcase screenshot](doc/image.jpg "Showcase screenshot") 


## 🎨 Color Palettes

### 🌙 Dark Theme

| Color name  | Code      | Color                                                         |
|-------------|-----------|---------------------------------------------------------------|
| Yellow      | `#ffff87` | ![#ffff87](https://place-hold.it/100x40/ffff87/111111?text=+) |
| Purple      | `#af87ff` | ![#af87ff](https://place-hold.it/100x40/af87ff/000000?text=+) |
| Green Light | `#a4e400` | ![#a4e400](https://place-hold.it/100x40/a4e400/000000?text=+) |
| Blue Light  | `#62d8f1` | ![#62d8f1](https://place-hold.it/100x40/62d8f1/000000?text=+) |
| Magenta     | `#fc1a70` | ![#fc1a70](https://place-hold.it/100x40/fc1a70/000000?text=+) |
| Orange      | `#ff9700` | ![#ff9700](https://place-hold.it/100x40/ff9700/000000?text=+) |

### ☀️ Light Theme

| Color name  | Code      | Color                                                         |
|-------------|-----------|---------------------------------------------------------------|
| Yellow      | `#ff8f00` | ![#ff8f00](https://place-hold.it/100x40/ff8f00/000000?text=+) |
| Purple      | `#6054d0` | ![#6054d0](https://place-hold.it/100x40/6054d0/000000?text=+) |
| Green Light | `#4fb000` | ![#4fb000](https://place-hold.it/100x40/4fb000/000000?text=+) |
| Blue Light  | `#00b3e3` | ![#00b3e3](https://place-hold.it/100x40/00b3e3/000000?text=+) |
| Magenta     | `#ff004b` | ![#ff004b](https://place-hold.it/100x40/ff004b/000000?text=+) |
| Orange      | `#ff4d00` | ![#ff4d00](https://place-hold.it/100x40/ff4d00/000000?text=+) |


## Requirements

- [Neovim](https://neovim.io/) >= [0.9.0](https://github.com/neovim/neovim/releases/tag/v0.9.0)


## Installation

Install with your package manager.

- folke/lazy.nvim:

```lua
{
    "polirritmico/monokai-nightasty.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
}
```

## Configuration

### Base configuration

```lua
vim.opt.background = "dark" -- dark or light
vim.cmd([[colorscheme monokai]])
```

### Toggle function

The Dark/light styles could be toggled by calling the provided function:

```vim
:MonokaiToggleLight
```

### External Plugins

#### Lualine

```lua
require("lualine").setup({
    options = { theme = "monokai" },
})
```

### Advanced configuration

> ⚠️ Set the configuration **BEFORE** calling `colorscheme monokai`.

#### Full config example:

```lua
vim.opt.background = "dark" -- The theme has `dark` and `light` styles

require("monokai-nightasty").setup({
    dark_style_background = "transparent", -- Can be `default`, `transparent`, `dark` or `#color` (e.g. #2b2b2b)
    light_style_background = "default", -- Can be `default`, `transparent`, `dark` or `#color` (e.g. #ffffff)
    dim_inactive = false, -- dims inactive windows
    hide_inactive_statusline = false, -- Hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    lualine_bold = true, -- Lualine headers will be bold.
    sidebars = { "qf", "help" }, -- Set a darker background on sidebars-like windows.
    terminal_colors = true, -- Set the colors used when opening a `:terminal`
    hl_styles = {
        -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles for sidebars (panels) and floating windows:
        -- TODO: check this
        floats = "dark", -- Can be `default`, `dark` or `transparent`
        sidebars = "dark", -- Can be `default`, `dark` or `transparent`
    }

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table.
    --- TODO: Full list of colors: 
    ---@param colors ColorScheme
    on_colors = function(colors)
        colors.border = "#888888"
        colors.comment = "#ff0000"
    end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table.
    --- TODO: Full list of highlights: 
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(hl, colors)
        hl.TelescopeNormal = { fg = colors.magenta, bg = colors.charcoal }
        hl.TelescopeBorder = { link = "MsgSeparator" }
    end,
})

-- Toggle Dark/Light styles
vim.keymap.set({"n"}, "<leader>tl", "<CMD>MonokaiToggleLight<CR>", {silent = true, desc = "Monokai: Toggle light/dark theme"})

```
---

## Colors & Highlight Groups under the hood

How the plugin setup the highlights and colors:

1. `colors` are loaded from the base palette and adjusted based on your
   configuration settings. For example, in the dark style the `bg` color is set
   to `#2b2b2b` if `dark_style_background` is set to `default`. If
   `dark_style_background` is set to `transparent`, then the `bg` value will be
   changed from the default value `#2b2b2b` to `none`.

2. The colors of the **light style** are set in `colors.light_palette`. If
   `vim.o.background == "light"` is detected, then the `default` palette is
   overriden with the light palette values.

3. Finally, `config.on_colors(colors)` is called, overriden any matching color.
   Currently, any change with `config.on_colors(colors)` affects both light and
   dark styles. I plan to correct this behaviour in future versions, but be
   warned that this will most likely introduce some breaking changes on your
   config.

4. These `colors` are utilized to generate the highlight groups.

5. `config.on_highlights(highlights, colors)` can be used to override highlight
   groups.

For default values of `colors` and `highlights`, please consult the
[dark](extras/lua/monokai-nightasty-dark.lua), and
[light](extras/lua/monokai-nightasty-light.lua) themes.

---

## Extras

Check the `extras` folder (`~/.local/share/nvim/lazy/monokai-nightasty/extras`
for Lazy packager). Copy, link or reference the file in each setting. Refer to
their respective documentation.

### Tmux

#### Fix `undercurls` in [Tmux](https://github.com/tmux/tmux):

To have undercurls show up and in color, add the following to your
[Tmux](https://github.com/tmux/tmux) configuration file:

```sh
# Undercurl
set -as terminal-features ",xterm-256color:RGB" # or: set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```


### Import color palette and utils

You could import the color palette to use with other plugins:

```lua
local colors = require("monokai-nightasty.colors").setup()

some_plugin_config.background = colors.bg_dark
some_plugin_config.default_color = colors.fg
some_plugin_config.title = colors.blue_light
```

Some color utilily functions are avaliable for your use:

```lua
local colors = require("monokai-nightasty.colors").setup()
local util = require("monokai-nightasty.util")

some_plugin_config.highlight_match = util.lighten(colors.bg, 0.5)
some_plugin_config.unfocus_bg = util.darken(colors.bg, 0.3)
```


## Contributions

This plugin is made mainly for my personal use, but suggestions, issues, or pull
requests are very welcome.

Enjoy
