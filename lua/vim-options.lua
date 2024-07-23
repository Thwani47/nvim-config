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
vim.keymap.set("n", "<leader>gf", ":!gofmt -w %<CR><CR>")
vim.keymap.set("n", "<leader>pp", ":!prettier -w %<CR><CR>")

-- Noice bindings
-- dismiss Noice messages
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Nice Message" })

-- editor keybindings
vim.keymap.set("n", "<leader>cf", 'ggVG"+y', { noremap = true, silent = true, desc = "Copy all file" })
vim.keymap.set("n", "<leader>cl", ':let @+=getline(".")<CR>', { noremap = true, silent = true, desc = "Copy line" })

function CopyNextNLines(n)
	vim.cmd("normal! " .. n .. "yy")
	vim.fn.setreg("+", vim.fn.getreg("0"))
end

vim.api.nvim_set_keymap("n", "<leader>cn", ":lua CopyNextNLines(vim.v.count1)<CR>", { noremap = true, silent = true })
-- usage: <leader>cn4 --> copy the next 4 lines

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
	"<leader>tf",
	":ToggleTerm direction=float<CR>",
	{ noremap = true, silent = true, desc = "Toggle terminal on a floating window" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>th",
	":ToggleTerm direction=horizontal<CR>",
	{ noremap = true, silent = true, desc = "Toggle terminal horizontally" }
)

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open in new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to the next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to the previous tab" })
vim.keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current tab buffer new tab" })
