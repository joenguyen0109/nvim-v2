-- return {
--   'akinsho/toggleterm.nvim',
--   version = '*',
--   config = true,
--   opt = {
--     size = 20,
--     open_mapping = [[<c-\>]],
--     hide_numbers = true,
--     shade_filetypes = {},
--     shade_terminals = true,
--     shading_factor = 2,
--     start_in_insert = true,
--     insert_mappings = true,
--     persist_size = true,
--     direction = 'float',
--     close_on_exit = true,
--     shell = vim.o.shell,
--   },
-- }
--
return {
	{
		"akinsho/toggleterm.nvim",
		config = true,
		cmd = "ToggleTerm",
		keys = { { "<c-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
		opts = {
			size = 20,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		},
	},
}
