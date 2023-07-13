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

To use the included [vim-airline](https://github.com/vim-airline/vim-airline) theme:
```lua
vim.g.airline_theme="monokai_tasty""
```

## 📺 Screen shots

![screenshot1](./images/example_javascript.png)
![screenshot2](./images/example_vim_and_markdown.png)
![screenshot3](./images/example_ruby.png)

## 🌟 Example `.vimrc`

```vim
let g:vim_monokai_tasty_italic = 1                    " allow italics, set this before the colorscheme
let g:vim_monokai_tasty_machine_tint = 1              " use `mahcine` colour variant
let g:vim_monokai_tasty_highlight_active_window = 1   " make the active window stand out
colorscheme vim-monokai-tasty                         " set the colorscheme

" Optional themes for airline/lightline
let g:airline_theme='monokai_tasty'                   " airline theme
let g:lightline = { 'colorscheme': 'monokai_tasty' }  " lightline theme

" If you don't like a particular colour choice from `vim-monokai-tasty`, you can
" override it here. For example, to change the colour of the search hightlight:
hi Search guifg=#bada55 guibg=#000000 gui=bold ctermfg=green ctermbg=black cterm=bold

" If you want to know what the name of a particular hightlight is, you can use
" `:What`. It prints out the syntax group that the cursor is currently above.
" https://www.reddit.com/r/vim/comments/6z4aau/how_to_stop_vim_from_autohighlighting_italics_in/
command! What echomsg synIDattr(synID(line('.'), col('.'), 1), 'name')
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

