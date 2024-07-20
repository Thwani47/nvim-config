vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- This keybinding uses jk as escape but don't know if like it
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true })

-- This keymap clears the search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err")
vim.keymap.set("n", "<leader>ff", ":!gofmt -w %<CR><CR>")
vim.keymap.set("n", "<leader>pp", ":!prettier -w %<CR><CR>")

-- Noice bindings
-- dismiss Noice messages
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Nice Message" })

-- terminal keybindings
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle terminal" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>tv",
	":ToggleTerm direction=vertical<CR>",
	{ noremap = true, silent = true, desc = "Toggle terminal vertically" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>t",
	":ToggleTerm direction=float<CR>",
	{ noremap = true, silent = true, desc = "Toggle terminal on a floating window" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>th",
	":ToggleTerm direction=horizontal<CR>",
	{ noremap = true, silent = true, desc = "Toggle terminal horizontally" }
)
