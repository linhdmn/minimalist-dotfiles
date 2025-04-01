-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- -- Set tab and indent options for all files
vim.opt.tabstop = 4 -- Number of visual spaces per TAB
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.smartindent = true -- Enable smart indentation

vim.opt.colorcolumn = "100"
vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])

vim.opt.termguicolors = true
vim.g.t_Co = 256
vim.g.background = "dark"
