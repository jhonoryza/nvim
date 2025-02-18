local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({
    'ts_ls',
    'lua_ls',
    'rust_analyzer',
    'gopls',
    'marksman',
    'intelephense',
    'eslint',
    'sqls',
    'volar',
    'svelte',
    'vimls',
    'zls',
    'yamlls',
    'jsonls',
    'html',
    'emmet_ls',
    'dockerls',
    'cssls',
    'cmake',
    'clangd',
    'bashls',
    'tailwindcss',
    'ast_grep'
})

-- Menyiapkan CMP dan pengaturan lainnya
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.set_preferences({
	sign_icons = { }
})

-- Konfigurasi preferensi lsp-zero
lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
    -- local silentOpts = { noremap = true, silent = true, buffer = bufnr }

    -- Keybinding universal untuk format LSP
	vim.keymap.set("n", "<leader>lf", function()
		vim.lsp.buf.format({ async = true })
	end, opts)

	-- Keybinding lainnya
	vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>lk", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>lg", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>lc", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>le", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<leader>lh", function() vim.lsp.buf.signature_help() end, opts)
end)

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

require('mason-lspconfig').setup({
    ensure_installed = {
        'ts_ls',
        'lua_ls',
        'rust_analyzer',
        'gopls',
        'intelephense',
        'eslint',
        'sqls',
        'marksman',
        'volar',
        'svelte',
        'vimls',
        'zls',
        'yamlls',
        'jsonls',
        'html',
        'emmet_ls',
        'dockerls',
        'cssls',
        'cmake',
        'clangd',
        'bashls',
        'tailwindcss',
        'ast_grep'
    }
})


-- local lspconfig = require("lspconfig")
-- lspconfig.eslint.setup({
--   filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "vue" },
-- })
-- require("mason-lspconfig").setup_handlers({
--     ["eslint"] = function()
--         lspconfig.eslint.setup({
--             settings = {
--                 format = true,
--             },
--             on_attach = function(client, bufnr)
--                 local opts = { noremap = true, silent = true, buffer = bufnr }
--                 vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, opts) -- Format manual
--             end,
--         })
--     end,
-- })

-- Konfigurasi untuk Intelephense
-- lspconfig.intelephense.setup({
--     settings = {
--         intelephense = {
--             format = true,  -- Aktifkan format otomatis
--         },
--     },
--     on_attach = function(client, bufnr)
--         local opts = { noremap = true, silent = true, buffer = bufnr }
--         -- Keybinding untuk format manual
--         vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, opts)
--     end,
-- })

-- Konfigurasi untuk gopls
-- lspconfig.gopls.setup({
--     settings = {
--         gopls = {
--             usePlaceholders = true,  -- Menambahkan placeholder untuk format kode
--         },
--     },
--     on_attach = function(client, bufnr)
--         local opts = { noremap = true, silent = true, buffer = bufnr }
--         -- Keybinding untuk format manual
--         vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, opts)
--     end,
-- })
