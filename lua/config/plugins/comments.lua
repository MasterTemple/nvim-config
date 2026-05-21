vim.pack.add({
	{
		src = "https://github.com/numToStr/Comment.nvim",
		version = "e30b7f2",
	},
})
require("Comment").setup()

vim.keymap.set(
	"n",
	"<leader>/",
	'<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
	{ desc = "Toggle comment" }
)

vim.keymap.set(
	"v",
	"<leader>/",
	'<Esc><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
	{ desc = "Toggle comment" }
)

vim.pack.add({
	{
		src = "https://github.com/folke/todo-comments.nvim",
		version = "31e3c38",
	},
})
require("todo-comments").setup()
