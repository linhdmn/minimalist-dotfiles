-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- -- In visual mode, move selected lines up with K, down with J
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>be", ":B64Encode<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>bd", ":B64Decode<cr>", { noremap = true, silent = true })
