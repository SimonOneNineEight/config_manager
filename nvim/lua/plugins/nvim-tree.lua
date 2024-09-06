return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VimEnter",
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			view = {
				width = 35,
				relativenumber = true,
			},

			renderer = {
				indent_markers = {
					enable = true,
				},
			},

			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},

			filters = {
				custom = { ".DS_Store" },
			},

			git = {
				ignore = false,
			},
		})
	end,

	keys = {
		{ "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Explorer", noremap = true, silent = true },
		{
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			desc = "Toggle file explorer in current",
			noremap = true,
			silent = true,
		},
		{ "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse file explorer", noremap = true, silent = true },
		{ "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "[R]efresh file [E]xplorer", noremap = true, silent = true },
	},
}
