return {
	"olivercederborg/poimandres.nvim",
	config = function()
		require("poimandres").setup({
			bold_vert_split = false, -- use bold vertical separators
			dim_nc_background = true, -- dim 'non-current' window backgrounds
			disable_background = true, -- disable background
			disable_float_background = true, -- disable background for floats
			disable_italics = true, -- d
		})
	end,
}
