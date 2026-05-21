vim.pack.add({
	{
		src = "https://github.com/max397574/better-escape.nvim",
		version = "3f4bc0b",
		mappings = {
			-- i for insert, other modes are the first letter too
			i = {
				j = {
					k = "<Esc>",
				},
			},
		},
	},
})
require("better_escape").setup()
