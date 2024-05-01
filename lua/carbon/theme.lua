local colors = require("carbon.colors")
local utils = require("carbon.utils")

local M = {}

function M.apply()
	local theme = {
		-- Main UI Colors
		Normal = { bg = colors.space_500, fg = colors.slate_100 },
		NormalNC = { bg = colors.space_500, fg = colors.slate_100 },
		CursorLine = { bg = colors.space_400 },
		CursorColumn = { bg = colors.space_400 },
		ColorColumn = { bg = colors.space_400 },
		LineNr = { fg = colors.slate_400 },
		CursorLineNr = { fg = colors.slate_200 },
		SignColumn = { bg = colors.space_500 },
		FoldColumn = { bg = colors.space_400 },
		Visual = { bg = colors.cyan_400 },
		Search = { bg = colors.yellow_100, fg = colors.space_500 },
		IncSearch = { bg = colors.teal_200, fg = colors.beige_100 },

		-- Floats and Popup Menus
		NormalFloat = { bg = colors.space_400 },
		Pmenu = { bg = colors.space_400, fg = colors.slate_100 },
		PmenuSel = { bg = colors.teal_200, fg = colors.beige_100 },
		FloatBorder = { bg = colors.space_400, fg = colors.gunmetal_400 },

		-- Status Line
		StatusLine = { bg = colors.space_400, fg = colors.slate_100 },
		StatusLineNC = { bg = colors.space_400, fg = colors.slate_300 },

		-- Error and Warnings
		ErrorMsg = { fg = colors.red_300 },
		WarningMsg = { fg = colors.olive_200 },

		-- Tabs and Splits
		TabLine = { bg = colors.space_500, fg = colors.slate_300 },
		TabLineSel = { bg = colors.teal_200, fg = colors.beige_100 },
		TabLineFill = { bg = colors.space_500, fg = colors.slate_300 },
		WinSeparator = { bg = colors.space_400, fg = colors.gunmetal_400 },

		-- Others
		MatchParen = { bg = colors.cyan_300, fg = colors.slate_100 },
		Title = { fg = colors.cyan_300 },
		Question = { fg = colors.cyan_300 },

		-- Basic Syntax Groups
		Comment = { fg = colors.slate_400, gui = "italic" },
		Constant = { fg = colors.pink_200 },
		Character = { fg = colors.turquoise_300 },
		Number = { fg = colors.red_200 },
		Boolean = { fg = colors.red_300 },
		Float = { fg = colors.red_300 },
		Identifier = { fg = colors.purple_200 },
		Function = { fg = colors.olive_200, gui = "bold" },
		Statement = { fg = colors.blue_200 },
		Operator = { fg = colors.red_200 },
		Keyword = { fg = colors.red_300 },

		-- Conditional Statements
		Conditional = { fg = colors.blue_200 },
		Repeat = { fg = colors.blue_200 },
		Label = { fg = colors.cyan_300 },

		-- Preprocessor and Compiler Directives
		PreProc = { fg = colors.cyan_300 },
		Include = { fg = colors.cyan_300 },
		Define = { fg = colors.red_400 },
		Macro = { fg = colors.cyan_300 },
		PreCondit = { fg = colors.cyan_400 },

		-- Data Types and Storage
		Type = { fg = colors.turquoise_400 },
		StorageClass = { fg = colors.purple_200 },
		Structure = { fg = colors.purple_200 },
		Typedef = { fg = colors.purple_200 },

		-- Special and Miscellaneous
		Special = { fg = colors.pink_200 },
		SpecialChar = { fg = colors.pink_200 },
		Tag = { fg = colors.cyan_300 },
		Delimiter = { fg = colors.blue_200 },
		SpecialComment = { fg = colors.slate_400 },
		Debug = { fg = colors.red_500 },
		Underlined = { fg = colors.teal_200, gui = "underline" },
		Ignore = { fg = colors.gunmetal_400 },
		Error = { fg = colors.red_400 },
		Todo = { fg = colors.yellow_100, gui = "bold,italic" },
	}

	for group, group_colors in pairs(theme) do
		utils.highlight_group(group, group_colors)
	end
end

return M
