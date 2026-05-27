vim.pack.add({
	{
		src = "https://github.com/ThePrimeagen/harpoon",
		branch = "harpoon2",
		-- version = "87b1a35",
	},
})

-- require("harpoon").setup({})

local harpoon = require("harpoon")
harpoon:setup({})

vim.keymap.set("n", "<leader>hpa", function()
	harpoon:list():add()
end, { desc = "[H]ar[P]oon [A]dd" })

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

vim.keymap.set("n", "<leader>hps", function()
	toggle_telescope(harpoon:list())
end, { desc = "[H]ar[P]oon [S]earch" })
