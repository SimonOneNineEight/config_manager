return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"query",
				"vim",
				"vimdoc",
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"css",
				"vimdoc",
				"jsdoc",
				"gitignore",
				"sql",
			},
			-- Autoinstall languages that are not installed
			auto_install = true,
			highlight = {
				enable = true,
				-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
				--  If you are experiencing weird indenting issues, add the language to
				--  the list of additional_vim_regex_highlighting and disabled languages for indent.
				additional_vim_regex_highlighting = { "ruby" },
			},
			indent = { enable = true, disable = { "ruby" } },
			autotag = { enable = true },

			--[[ incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<M-space>",
					node_increment = "<M-space>",
					scope_increment = false,
					node_decrement = "<bs>",
				},
			}, ]]
		})

		-- MDX
		vim.filetype.add({
			extension = {
				mdx = "mdx",
			},
		})

		vim.treesitter.language.register("markdown", "mdx")
	end,
	-- There are additional nvim-treesitter modules that you can use to interact
	-- with nvim-treesitter. You should go explore a few and see what interests you:
	--
	--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
	--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
	--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}
