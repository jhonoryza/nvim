local default_shell

if vim.loop.os_uname().sysname == "Windows_NT" then
  default_shell = os.getenv('COMSPEC') or 'powershell'
else
  default_shell = os.getenv('SHELL')
    or vim.fn.exepath('fish')
    or vim.fn.exepath('zsh')
    or vim.fn.exepath('bash')
    or '/bin/sh'
end

vim.o.shell = default_shell
vim.opt.shellcmdflag = '-i -c'

vim.opt.guicursor = {
  "n-v-c:block",       -- Blok di normal, visual, dan command mode
  "i-ci:ver25",        -- Garis vertikal di insert dan command insert mode
  "r-cr:hor20",        -- Garis horizontal di replace mode
}
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

