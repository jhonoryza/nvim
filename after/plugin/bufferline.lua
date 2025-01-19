require("bufferline").setup{
    options = {
        mode = "buffers", -- Setiap buffer terlihat seperti tab
        separator_style = "slant", -- Gaya pemisah antar buffer
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,
    },
}

vim.keymap.set("n", "<Tab>", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.BufferLineCyclePrev)
vim.keymap.set("n", "<leader>x", vim.cmd.bd)
