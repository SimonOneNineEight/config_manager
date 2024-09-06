local opt = vim.opt
local global = vim.g

-- Global settings
global.has_nerd_font = true

-- Line number
opt.number = true
opt.relativenumber = true

-- Undo file
opt.undofile = true
opt.undolevels = 1000

-- Mouse Event
opt.mouse = "a"

-- Don't show mode since we have status line
opt.showmode = false

-- Sync clipper board between system and nvim
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Indent
opt.breakindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Case-insensitive searching
opt.ignorecase = true
opt.smartcase = true

-- Keep sign column on
opt.signcolumn = "yes"

-- Decrease update time
opt.updatetime = 250

-- Decrease map sequence wait time
opt.timeoutlen = 300

-- Config how split should act
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitution live
opt.inccommand = "split"

-- Show which cursor is
opt.cursorline = true

-- Keey content away from the bottom of the screen
opt.scrolloff = 16

-- Set a line to remind line length
opt.colorcolumn = "80"

-- Enable true color
opt.termguicolors = true

-- Encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
