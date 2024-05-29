local M = {}

M.highlight_group = function(group, properties)
	local bg = properties.bg or "NONE"
	local fg = properties.fg or "NONE"
	local gui = properties.gui or "NONE"

	local cmd = "highlight " .. group .. " guibg=" .. bg .. " guifg=" .. fg .. " gui=" .. gui
	vim.cmd(cmd)
end

M.link_group = function(group, highlight)
	local cmd = "highlight! link " .. group .. highlight .. " "

	vim.cmd(cmd)
end

return M
