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
		-- version = "31e3c38",
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
	},
})

--- @type TodoOptions
local opts = {
	keywords = {
		-- CHECK = { icon = "󱉶 ", color = "@lsp.type.string", alt = { "VERIFY" } },
		-- DONE = { icon = " ", color = "@lsp.type.string", alt = { "FINISHED" } },
		-- SAFE = { icon = "🦀", color = "@lsp.type.boolean", alt = { "SAFETY" } },
		-- JUSTIFY = { icon = " ", color = "@keyword.conditional" },
		-- FEAT = { icon = "", color = "@string.documentation", alt = { "IDEA" } },
		-- IDK = { icon = "?", color = "@module.builtin", alt = { "HELP", "QUESTION" } },

		CHECK = { icon = "󱉶 ", color = "check", alt = { "VERIFY" } },
		DONE = { icon = " ", color = "done", alt = { "FINISHED" } },
		SAFE = { icon = "🦀", color = "safe", alt = { "SAFETY" } },
		JUSTIFY = { icon = " ", color = "justify" },
		FEAT = { icon = "", color = "feat", alt = { "IDEA" } },
		IDK = { icon = "?", color = "idk", alt = { "HELP", "QUESTION" } },
	},
	colors = {
		check = {
			-- "@lsp.type.string",
			"#67eb34",
		},
		done = { "#42fcab" },
		safe = { "#ffa75e" },
		justify = { "#bc80ff" },
		feat = { "#f5e618" },
		idk = { "#fc4242" },
	},
	-- highlight = {
	-- 	pattern = [[.*<(KEYWORDS)\s*:?]], -- pattern or table of patterns, used for highlightng (vim regex)
	-- },
	-- search = {
	-- 	pattern = [[\b(KEYWORDS)\b:?]], -- pattern or table of patterns, used for highlightng (vim regex)
	-- },
}
require("todo-comments").setup(opts)
