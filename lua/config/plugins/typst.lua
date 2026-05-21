local open_cmd = ""

if vim.g.personal then
	open_cmd = "uwsm app -- brave --new-window --ozone-platform=wayland --app=%s"
end

vim.pack.add({
	{
		src = "https://github.com/chomosuke/typst-preview.nvim",
		version = "87db18b",
		ft = "typst",
		opts = {
			open_cmd = open_cmd,
		},
	},
})
