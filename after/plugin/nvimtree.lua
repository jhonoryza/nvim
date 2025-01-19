vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>q", vim.cmd.NvimTreeToggle)

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
    actions = {
        change_dir = {
            enable = false, -- Mencegah pindah ke direktori parent
        },
        open_file = {
            quit_on_open = false, -- Jangan tutup NvimTree saat file dibuka
            window_picker = {
                enable = true,
            },
        },
    },
    hijack_directories = {
        enable = true, -- Mencegah nvim-tree mengambil alih navigasi direktori
    },
    git = {
        enable = false,
    },
    filesystem_watchers = {
        enable = true, -- Gunakan watcher untuk mendeteksi perubahan
        ignore_dirs = {
            "/.ccls-cache",
            "/build",
            "/node_modules",
            "/target",
            "/vendor",
        },
    },
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
        root_folder_label = false,
    },
    filters = {
        dotfiles = false,
        custom = {
            'node_modules',
            'vendor'
        },
    },
})

