local dir = "config.scripts."
local files = { "center-cursor", "cd-parent" }
for _, file in pairs(files) do
	require(dir .. file)
end
