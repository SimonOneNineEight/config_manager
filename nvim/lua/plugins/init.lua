return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = { style = "night" },
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{ "folke/which-key.nvim", lazy = true, event = "VeryLazy" },
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "nvim-lua/plenary.nvim", name = "plenary" },
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{ "stevearc/dressing.nvim", event = "VeryLazy" },
}
