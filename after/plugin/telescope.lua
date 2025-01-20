local builtin = require('telescope.builtin')

vim.keymap.set('n', ';p', builtin.find_files, { desc = 'Find all files' })
vim.keymap.set('n', ';f', builtin.git_files, { desc = 'Find project files' })

vim.keymap.set('n', ';s', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', ';o', builtin.buffer, { desc = 'Lists of open buffers' })
vim.keymap.set('n', ';r', builtin.oldfiles, { desc = 'Recent Files' })
vim.keymap.set('n', ';;', builtin.resume, { desc = 'Resume the previous picker' })
vim.keymap.set('n', ';t', function()
    builtin.treesitter()
end, {desc = "Lists Function names, variables, from Treesitter" })

-- vim.keymap.set('n', '<leader>pws', function()
--     local word = vim.fn.expand("<cword>")
--     builtin.grep_string({ search = word })
-- end)
--
-- vim.keymap.set('n', '<leader>pWs', function()
--     local word = vim.fn.expand("<cWORD>")
--     builtin.grep_string({ search = word })
-- end)

require("telescope").load_extension "file_browser"
vim.keymap.set("n", ";b", function ()
    local telescope = require("telescope")

    local function telescope_buffer_dir()
        return vim.fn.expand("%:p:h")
    end

    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        initial_mode = "normal",
        layout_config = { height = 40 },
    })
end, { desc = 'Open File Browser with the path of the current buffer' })
