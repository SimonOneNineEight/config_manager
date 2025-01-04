return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	{
		"iamcco/markdown-preview.nvim",
		event = "VeryLazy",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown", "mdx" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		keys = {
			{
				"<leader>mp",
				"<cmd>MarkdownPreviewToggle<cr>",
				desc = "[M]arkdown [P]review",
			},
		},
		config = function()
			vim.cmd([[do FileType]])
			vim.g.mkdp_browser = "Arc"
			vim.g.mkdp_echo_preview_url = 1
		end,
	},

	-- { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },

	-- {
	-- 	"iamcco/markdown-preview.nvim",
	-- 	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	-- 	build = "cd app && yarn install",
	-- 	init = function()
	-- 		vim.g.mkdp_filetypes = { "markdown" }
	-- 	end,
	-- 	ft = { "markdown" },
	-- },
}
