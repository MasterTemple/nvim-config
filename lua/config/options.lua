-- See `:help vim.o`

vim.g.have_nerd_font = true

vim.o.conceallevel = 1

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Mouse
vim.o.mouse = "a"

-- Don't show the mode (already in statusline)
vim.o.showmode = false

-- Sync clipboard between OS and Neovim (scheduled to avoid startup-time hit)
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.o.breakindent = true
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Whitespace display
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Live substitution preview
vim.o.inccommand = "split"

vim.o.cursorline = true

-- Raise a dialog when quitting with unsaved changes
vim.o.confirm = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.lazyredraw = true
vim.opt.magic = true
