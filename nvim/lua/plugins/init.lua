return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
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
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				extra_group = {
					"NormalFloat",
					"NvimTreeNormal",
				},
			})
		end,
	},
}
