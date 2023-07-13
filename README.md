monokai-tasty.nvim
==================

A Lua implementation of the very tasty vim-monokay-tasty.

_Now 86% tastier than competitors_


![Screenshot](./images/example_main.png)

## 🔌 Installation

Just add the repo to your packer manager:

```lua
local plugins = {
    -- ...
    "polirritmico/monokai-tasty.nvim",
    -- ...
}

```

## 🐺 Config

Default config:

```lua
require("monokai-tasty.nvim").setup({})
```

### Customization:

```lua
require("monokai-tasty.nvim").setup({})
```

To use the [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) theme:
```lua
-- Lualine setup
monokai = require("monokai.extras").lualine
require("lualine").setup({
    options = {
        theme = monokai,
    }
})
```

## 📺 Screenshots

![screenshot](./images/python.png)
![screenshot](./images/cpp)
![screenshot](./images/lua)

## 🌟 Setup

Default setup:

```lua
require("monokai").setup()
```

Options:

```lua
require("monokai").setup({
    disable_italics = true,
    transparent_background = false,
    -- theme = custom_theme,
})
```

## 🎨 Colour palette

| Colour name      |Colour Code | Colour
|------------------|------------|------------------------------------------------------------
| Yellow           | `#ffff87`  |![#ffff87](https://place-hold.it/100x40/ffff87/111111?text=+)
| Purple           | `#af87ff`  |![#af87ff](https://place-hold.it/100x40/af87ff/000000?text=+)
| Light Green      | `#A4E400`  |![#A4E400](https://place-hold.it/100x40/A4E400/000000?text=+)
| Light Blue       | `#62D8F1`  |![#62D8F1](https://place-hold.it/100x40/62D8F1/000000?text=+)
| Magenta          | `#FC1A70`  |![#FC1A70](https://place-hold.it/100x40/FC1A70/000000?text=+)
| Orange           | `#FF9700`  |![#FF9700](https://place-hold.it/100x40/FF9700/000000?text=+)

