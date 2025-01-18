# Personal NVim Config

create a directory in `~/.config/nvim`

clone this repo

```bash
git clone git@github.com:jhonoryza/nvim.git
```

go to `cd ~/.config/nvim/ && nvim .`

## some keybinding

- `leader` is using space
- `leader+gs` to interact with git
- `leader+pf` to find files
- `leader+pws` to search word
- `leader+ps` to grep string
- `ctrl+p` git find file

## lsp keybinding

- `ctrl+space` code completion
- `ctrl+y` confirm
- `ctrl+n` next item
- `ctrl+p` prev item
- `ctrl+h` signature_help
- `gd` go to definition
- `K` hover
- `leader+vrn` rename
- `leader+vrr` references
- `leader+vca` code action 
- `leader+vws` workspace symbol
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

- edit this file `~/.config/nvim/after/plugin/colors.lua`

## treesitter

- see this file `~/.config/nvim/after/plugin/treesitter.lua`
