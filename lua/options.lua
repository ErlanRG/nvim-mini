vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.completeopt = "menu,menuone,noselect"

if vim.fn.has("linux") == 1 then
  vim.opt.clipboard = "unnamedplus"
elseif vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
  vim.opt.clipboard = "unnamed"
end
