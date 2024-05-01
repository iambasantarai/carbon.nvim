local M = {}

M.highlight_group = function(group, colors)
	local bg = colors.bg or "NONE"
	local fg = colors.fg or "NONE"
	local gui = colors.gui or "NONE"

	local cmd = "highlight " .. group .. " guibg=" .. bg .. " guifg=" .. fg .. " gui=" .. gui
	vim.cmd(cmd)
end

M.link_group = function(group, highlight)
	local cmd = "highlight! link " .. group .. highlight .. " "

	vim.cmd(cmd)
end

return M
