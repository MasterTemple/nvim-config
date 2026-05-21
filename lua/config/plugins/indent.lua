vim.pack.add({
	{
		src = "https://github.com/michaeljsmith/vim-indent-object",
		version = "8ab36d5",
	},
})

-- Add indentation guides even on blank lines

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help ibl`
vim.pack.add({
	{
		src = "https://github.com/lukas-reineke/indent-blankline.nvim",
		version = "d28a3f7",
	},
})
require("ibl").setup({})

vim.pack.add({
	{
		src = "https://github.com/NMAC427/guess-indent.nvim",
		version = "84a4987",
	},
})
