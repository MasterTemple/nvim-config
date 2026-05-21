local files = {
	-- Must be first for plugins that depend on it
	"telescope",
	"lsp",
	"treesitter",

	"autocomplete",
	"better-escape",
	"comments",
	"dot-repeat",
	"fff",
	"files",
	"flash",
	"format",
	"git",
	"guttermarks",
	"indent",
	"markdown",
	"mini",
	"mkmv",
	"rust",
	"surrounded",
	"text-objects",
	"tmux",
	"typst",
	"which-key",
}

for _, file in pairs(files) do
	require("config.plugins." .. file)
end
