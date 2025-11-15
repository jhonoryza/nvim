# Personal NVim Config

create a directory in `~/.config/nvim`

clone this repo

```bash
git clone git@github.com:jhonoryza/nvim.git
```

clone packer

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

install ripgrep

```bash
brew install ripgrep
```

go to `cd ~/.config/nvim/ && nvim .`

then run `:PackerCompile` and `:PackerSync` exit then reopen `nvim .`

## some keybinding

- `leader` is using space
- `;p` to find all files
- `;f` find project files
- `leader+gs` to interact with git
- `;s` to find word
- `;r` to find recent files
- `;t` to find list all func and variable
- `;b` to open file browser
- `;o` to list open buffer
- `;;` to resume previous picker
- `leader+e` open sidebar
- `leader+q` close sidebar
- `leader+x` close buffer
- `ctrl+c` escape when in insert mode
- `ss` split vertical
- `sv` close horizontal
- `sl` move to right split
- `sh` move to left split
- `sj` move to down split
- `sk` move to up split
- `Tab` cycle to next buffer
- `Shift+Tab` cycle to prev buffer
- `ysiw'` surround single quote
- `ysiw"` surround double quote
- `cs"'` change double quote to single quote
- `cs'"` change single quote to double quote
- `leader+l` switch to right nvimtree
- `leader+h` switch to left nvimtree

## lsp keybinding

- `ctrl+space` code completion
- `ctrl+y` confirm
- `ctrl+n` next item
- `ctrl+p` prev item
- `leader+lh` signature_help
- `leader+ld` go to definition
- `leader+lk` hover
- `leader+ff` format
- `leader+lr` rename
- `leader+le` references
- `leader+lc` code action 
- `leader+ls` workspace symbol
- `leader+lg` open in float

## available lsp

- [link is here](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers)
- edit this file `~/.config/nvim/after/plugin/lsp.lua`
- to apply run `:so`

## other keybindings

- see this file `~/.config/nvim/lua/fajar/remap.lua`

## vim configuration

- see this file `~/.config/nvim/lua/fajar/set.lua`

## adding new plugin

- edit this file `~/.config/nvim/lua/fajar/packer.lua`
- to install run `:so` and `:PackerSync`

## adjust default theme

- to add new theme edit this file `~/.config/nvim/after/plugin/colors.lua`
- to apply run `:w` and `:so`
- available colors
  - kanagawa (default)
  - gruvbox
- live change color run `:lua theme('gruvbox')`

## treesitter

- see this file `~/.config/nvim/after/plugin/treesitter.lua`

## tab feature

- see this file `~/.config/nvim/after/plugin/bufferline.lua`

## sidebar folder navigation

- see this file `~/.config/nvim/after/plugin/nvimtree.lua`

### Security

If you've found a bug regarding security please mail [jardik.oryza@gmail.com](mailto:jardik.oryza@gmail.com) instead of
using the issue tracker.

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
