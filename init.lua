vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.foldenable = false
vim.opt.hlsearch = false

vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.cmd('au BufRead,BufNewFile *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4')

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamed'

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.signcolumn = 'no'
vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.mapleader = ' '
vim.g.mapleader = ' '

vim.cmd('au BufReadPost *.zsh,.zshrc set filetype=sh')
vim.cmd('au BufReadPost *.conf set filetype=config')

require('plugins')
