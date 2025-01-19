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

go to `cd ~/.config/nvim/ && nvim .`

then run `:PackerCompile` and `:PackerSync` exit then reopen `nvim .`

## some keybinding

- `leader` is using space
- `leader+pf` to find all files
- `ctrl+p` find project files
- `leader+gs` to interact with git
- `leader+pws` to search word
- `leader+ps` to grep string
- `leader+e` open sidebar
- `leader+q` close sidebar
- `leader+x` close buffer
- `Tab` cycle to next buffer
- `Shift+Tab` cycle to prev buffer

## lsp keybinding

- `ctrl+space` code completion
- `ctrl+y` confirm
- `ctrl+n` next item
- `ctrl+p` prev item
- `ctrl+h` signature_help
- `gd` go to definition
- `K` hover
- `leader+vr` rename
- `leader+ve` references
- `leader+vc` code action 
- `leader+vs` workspace symbol
- `leader+vd` open in float

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
