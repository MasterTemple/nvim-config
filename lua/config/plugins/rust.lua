vim.pack.add({
	{
		src = "https://github.com/vxpm/ferris.nvim",
		version = "2758655",
	},
	{
		src = "https://github.com/mrcjkb/rustaceanvim",
		version = "6ba2ec9",
	},
})

vim.keymap.set(
	"n",
	"<leader>re",
	'<cmd>lua require("ferris.methods.expand_macro")() <CR>',
	{ desc = "Expand Rust macro recursively" }
)

vim.keymap.set("n", "<leader><BS>", "<cmd>RustLsp parentModule<CR>", { desc = "Go to parent module" })
