return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	dependencies = {
		"plenary",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"folke/todo-comments.nvim",
	},
	keys = {
		-- Global key mappings to trigger Telescope commands

		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (Root Dir)" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep (Root Dir)" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help Tags" },
		{
			"<leader>ps",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
			end,
			desc = "Find cursor word",
		},
		{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "[F]ind [K]eymaps" },
		{ "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "[F]ind [T]odo comments" } },
	},
	opts = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				layout_strategy = "horizontal",
				mappings = {
					i = {
						["<C-n>"] = require("telescope.actions").move_selection_next, -- Move to next item in insert mode
						["<C-p>"] = require("telescope.actions").move_selection_previous, -- Move to previous item in insert mode
						["<C-c>"] = require("telescope.actions").close, -- Close Telescope in insert mode
					},
					n = {
						["q"] = require("telescope.actions").close, -- Close Telescope in normal mode
					},
				},
			},
			extensions = {
				fzf = {},
			},
		})

		telescope.load_extension("fzf")
	end,
}
