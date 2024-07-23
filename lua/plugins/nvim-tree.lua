return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			git = {
				ignore = false,
			},
		})

		vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
		vim.keymap.set(
			"n",
			"<leader>ef",
			":NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		)
		vim.keymap.set("n", "<leader>ec", "NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
		vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
	end,
}
