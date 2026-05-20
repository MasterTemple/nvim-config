local dir = "config.scripts."
local files = { "center-cursor" }
for _, file in pairs(files) do
	require(dir .. file)
end
