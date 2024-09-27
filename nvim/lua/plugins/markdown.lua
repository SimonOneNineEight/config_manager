return {
	{
		"iamcco/markdown-preview.nvim",
		event = "VeryLazy",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = function()
			require("lazy").load({ plugins = { "markdown-preview.nvim" } })
			vim.fn["mkdp#util#install"]()
		end,
		keys = {
			{
				"<leader>mp",
				ft = "markdown",
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
}
