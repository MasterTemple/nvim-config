-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local plugins = {
	{
		src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
		-- version = vim.version.range("*"),
		version = "8f858a7",
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
		version = "74b06c6",
	},
	{
		src = "https://github.com/MunifTanjim/nui.nvim",
		version = "de74099",
	},
}

if vim.g.have_nerd_font then
	table.insert(plugins, "https://github.com/nvim-tree/nvim-web-devicons") -- not strictly required, but recommended
end

vim.pack.add(plugins)

vim.keymap.set("n", "\\", "<Cmd>Neotree toggle<CR>", { desc = "NeoTree reveal", silent = true })

require("neo-tree").setup({
	filesystem = {
		window = {
			mappings = {
				-- ["\\"] = "close_window",
			},
		},
	},
})

-- alternative: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md
vim.pack.add({
	{
		src = "https://github.com/stevearc/oil.nvim",
		version = "0fcc838",
	},
	{
		src = "https://github.com/nvim-mini/mini.icons",
		version = "520995f",
	},
})

require("mini.icons").setup()

---@module 'oil'
---@type oil.SetupOpts
local opts = {}
require("oil").setup(opts)

vim.keymap.set("n", "<BS>", "<cmd>Oil<CR>", { desc = "Edit files of parent directory" })
