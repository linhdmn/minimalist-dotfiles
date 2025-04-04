vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>pv", "<cmd>Sex!<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
vim.keymap.set("n", "<leader>wr", "<cmd>set wrap!<CR>")
vim.keymap.set("n", "<leader>py", "<cmd>let @+=expand('%:p')<CR>")

vim.api.nvim_set_keymap("n", "<leader>ct", ":CloakToggle<CR>", { noremap = true, silent = true })
-- Optional: set key mappings for FZF commands
vim.api.nvim_set_keymap("n", "<leader>ff", ":Files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":GFiles<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", ":History<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Ag", ":Ag<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Rg", ":Rg<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>RG", ":RG<CR>", { noremap = true, silent = true })

local function open_in_second_window()
	-- Get the directory of the current 'netrw' buffer
	local dir = vim.fn.expand("%:p:h")
	if vim.fn.isdirectory(dir) == 0 then
		dir = vim.fn.expand("%:p:h:h")
	end

	-- Get the file name under the cursor in 'netrw'
	local file = vim.fn.expand("<cfile>")
	local full_path = dir .. "/" .. file

	-- Debug: Print the full path to verify
	print("Debug full path: " .. full_path)

	-- Switch to the second window
	vim.cmd("wincmd 2w")

	-- Open the file in the second window
	vim.cmd("edit " .. vim.fn.fnameescape(full_path))
end

-- Map the function to a key combination in normal mode
vim.api.nvim_set_keymap("n", "<Leader>o", "", {
	noremap = true,
	silent = true,
	callback = open_in_second_window,
})

vim.api.nvim_set_keymap("n", "<leader>mp", ":MarkdownPreview<CR>", { noremap = true, silent = true })


