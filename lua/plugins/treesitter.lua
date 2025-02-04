return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"lua",
				"javascript",
				"typescript",
				"python",
				"go",
				"c_sharp",
				"css",
				"sql",
				"dockerfile",
				"yaml",
				"terraform",
				"proto",
				"html",
				"regex",
				"bash",
				"markdown",
				"markdown_inline",
				"vim",
			},
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			modules = {},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
