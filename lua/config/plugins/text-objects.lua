-- autopairs
-- https://github.com/windwp/nvim-autopairs

vim.pack.add({ {
	src = "https://github.com/windwp/nvim-autopairs",
	version = "7b9923a",
} })

require("nvim-autopairs").setup({})

vim.pack.add({
	{
		src = "https://github.com/dhruvasagar/vim-table-mode",
		version = "bb02530",
	},
})

vim.keymap.set("n", "<leader>ta", "<cmd>TableModeRealign<CR>", { desc = "[T]able Mode [A]lign" })

vim.pack.add({
	{
		src = "https://github.com/mg979/vim-visual-multi",
		version = "a6975e7",
	},
})
