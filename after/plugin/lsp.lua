-----------------------------------------------------
-- Modern LSP setup (Neovim 0.11+) tanpa lsp-zero
-- Bebas warning deprecated
-----------------------------------------------------

-- Workaround sementara untuk tbl_islist deprecated
if vim.tbl_islist == nil then
  vim.tbl_islist = function(t)
    if type(t) ~= "table" then return false end
    local n = 0
    for k in pairs(t) do
      if type(k) ~= "number" then return false end
      n = n + 1
    end
    return n == #t
  end
end

local ok_lspconfig, lspconfig = pcall(require, "lspconfig")
if not ok_lspconfig then return end

local ok_mason, mason = pcall(require, "mason")
if not ok_mason then return end

local ok_mason_lsp, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok_mason_lsp then return end

local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not ok_cmp then return end

mason.setup()

local servers = {
  "bashls", "clangd", "cssls", "dockerls", "emmet_ls",
  "eslint", "gopls", "html", "intelephense", "jsonls",
  "lua_ls", "marksman", "rust_analyzer", "sqls",
  "svelte", "tailwindcss", "ts_ls", "vimls",
  "yamlls", "zls", "ast_grep"
}

mason_lspconfig.setup({
  ensure_installed = servers,
})

-----------------------------------------------------
-- Keymaps universal LSP
-----------------------------------------------------
local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr, silent = true }

  vim.keymap.set("n", "<leader>ff", function()
    vim.lsp.buf.format({ async = true })
  end, opts)

  vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>ls", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>lg", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>le", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>lh", vim.lsp.buf.signature_help, opts)
end

-----------------------------------------------------
-- Capabilities untuk nvim-cmp
-----------------------------------------------------
local capabilities = cmp_nvim_lsp.default_capabilities()

-----------------------------------------------------
-- Custom config per server
-----------------------------------------------------
local custom = {}

custom.lua_ls = {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = { checkThirdParty = false },
    },
  },
}

custom.eslint = { settings = { format = true } }

custom.gopls = {
  settings = {
    gopls = { usePlaceholders = true, analyses = { unusedparams = true } }
  }
}

custom.intelephense = {
  settings = {
    intelephense = { format = true }
  }
}

-----------------------------------------------------
-- Setup semua server
-----------------------------------------------------
for _, server in ipairs(servers) do
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if custom[server] then
    opts = vim.tbl_deep_extend("force", opts, custom[server])
  end

  -- Gunakan setup dari lspconfig SERVER
  lspconfig[server].setup(opts)
end
