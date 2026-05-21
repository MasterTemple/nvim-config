if vim.g.neovide then
	vim.g.neovide_fullscreen = false
	vim.g.neovide_remember_window_size = true
	vim.g.neovide_disable_all_animations = 1
	vim.g.neovide_cursor_smooth_blink = true
	vim.g.neovide_cursor_animation_length = 0.0
	vim.g.neovide_cursor_short_animation_length = 0.0
	vim.g.neovide_cursor_trail_size = 0.0
	vim.g.neovide_scroll_animation_length = 0.0

	-- Allow for font resizing in Neovide application
	vim.keymap.set(
		{ "n", "v" },
		"<C-+>",
		":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>",
		{ silent = true }
	)
	vim.keymap.set(
		{ "n", "v" },
		"<C-->",
		":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>",
		{ silent = true }
	)
	vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end
