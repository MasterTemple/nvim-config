local dir = "config.mappings."
local files = { "normal", "insert", "visual" }
for _, file in pairs(files) do
	require(dir .. file)
end
