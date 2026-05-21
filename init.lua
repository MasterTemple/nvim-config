-- Add config path to run-time path
vim.opt.rtp:prepend(vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h"))

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.personal = false
if os.getenv("USER"):match("temple") then
	vim.g.personal = true
end
vim.g.work = not vim.g.personal

require("config.autocmds")
-- require("config.core")
require("config.highlights")
require("config.mappings")
require("config.neovide")
require("config.options")
require("config.plugins")
require("config.scripts")
