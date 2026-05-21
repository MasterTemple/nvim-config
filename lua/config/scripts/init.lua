local dir = "config.scripts."
local files = {
	"cd-parent",
	"center-cursor",
	"copy-path",
}
for _, file in pairs(files) do
	require(dir .. file)
end
