-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- Global highlight overrides
	hl_override = {
		-- editor background
		Normal = { bg = "#171717" },
		NormalNC = { bg = "#171717" },
		SignColumn = { bg = "#171717" },
		EndOfBuffer = { bg = "#171717" },

		-- nvim-tree sidebar
		NvimTreeNormal = { bg = "#171717" },
		NvimTreeNormalNC = { bg = "#171717" },
		NvimTreeEndOfBuffer = { bg = "#171717" },
		NvimTreeWinSeparator = { fg = "#171717", bg = "#171717" },
	},
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
