-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- vim.cmd("colorscheme github_dark_high_contrast")
vim.cmd("colorscheme rose-pine")

vim.opt.colorcolumn = "100"
-- vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])

vim.opt.termguicolors = true
-- vim.g.t_Co = 256
-- vim.g.background = "dark"
--
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
