vim.opt.guicursor = ""

vim.opt.hidden = true
vim.opt.swapfile = false

vim.opt.errorbells = false
vim.opt.foldenable = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamed'
vim.opt.laststatus = 0

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.signcolumn = 'no'
vim.opt.termguicolors = true
vim.opt.cursorline = true
--vim.opt.wildmenu = true
--vim.opt.wildmode = longest,full

vim.g.mapleader = ' '

vim.opt.updatetime = 50
vim.cmd[[colorscheme no-clown-fiesta]]
vim.cmd('au BufRead,BufNewFile *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4')
vim.cmd('au BufReadPost *.zsh,.zshrc set filetype=sh')
vim.cmd('au BufReadPost *.conf set filetype=config')
vim.cmd('au BufWritePost config.h !doas make install')

require('plugins')
