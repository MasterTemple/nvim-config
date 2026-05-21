vim.pack.add({
	{
		src = "https://github.com/MasterTemple/mkmv",
		version = "5a94c4b",
	},
})

require("mkmv").setup({
	rename_on_move = false,
	rename_include_extension = false,
	write_empty_file_on_create = true,
})

vim.keymap.set("n", "<leader>fn", ":CreateInFolder<CR>", { desc = "[F]ile [N]ew" })
vim.keymap.set("n", "<leader>fm", ":MoveToFolder<CR>", { desc = "[F]ile [M]ove" })
