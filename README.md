# spore.nvim

A warm-spectrum dark colorscheme with builtin desaturation variants, suitable for dark environments and wide gammut monitors.

![Preview](screenshots/preview.png)

## Installation

`vim.pack`

```lua
vim.pack.add({
    'https://github.com/linhusp/spore.nvim',
})
vim.cmd.colorscheme('spore')
```

## Usage

```vim
:colorscheme spore
```

## Showcase

There are the default colorscheme and 3 desaturation variants:

| spore                               | spore-soft                    |
| ----------------------------------- | ----------------------------- |
| ![Default](screenshots/default.png) | ![Soft](screenshots/soft.png) |

| spore-softer                      | spore-softest                       |
| --------------------------------- | ----------------------------------- |
| ![Softer](screenshots/softer.png) | ![Softest](screenshots/softest.png) |

## Plugins support

The main focus is for treesitter and lsp highlightings. But I will sometimes add support for other plugins, at least the ones that I used.

The current list is:

- gitsigns
- mini.pick
- blink.cmp
