return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},

	config = function()
		-- set keymaps
		vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope old_files<cr>", { desc = "Fuzzy find recent files" })
		vim.keymap.set("n", "<Space>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find strings in cwd" })
		vim.keymap.set("n", "<Space>fh", "<cmd>Telescope help_tags<cr>", { desc = "Show help tags" })
		vim.keymap.set("n", "<Space>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor" })
		vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
	end,
}
