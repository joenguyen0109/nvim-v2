return {
	"startup-nvim/startup.nvim",
	requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		require("startup").setup({
			header = {
				type = "text",
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "Header",
				margin = 5,
				content = {
					" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
					" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
					" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
					" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
					" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
					" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
				},
				highlight = "Statement",
				default_color = "",
				oldfiles_amount = 0,
			},
			-- name which will be displayed and command
			body = {
				type = "mapping",
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "Basic Commands",
				margin = 5,
				content = {
					{ " Find File", "Telescope find_files", "<leader>ff" },
					{ "󰍉 Find Word", "Telescope live_grep", "<leader>sg" },
					{ " Recent Files", "Telescope oldfiles", "<leader>of" },
					{ " Colorschemes", "Telescope colorscheme", "<leader>th" },
				},
				highlight = "String",
				default_color = "",
				oldfiles_amount = 0,
			},
			footer = {
				type = "text",
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "Footer",
				margin = 5,
				content = { "startup.nvim" },
				highlight = "Number",
				default_color = "",
				oldfiles_amount = 0,
			},
			clock = {
				type = "text",
				content = function()
					local clock = " " .. os.date("%H:%M")
					local date = " " .. os.date("%d-%m-%y")
					return { clock, date }
				end,
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "",
				margin = 5,
				highlight = "TSString",
				default_color = "#FFFFFF",
				oldfiles_amount = 10,
			},

			options = {
				mapping_keys = true,
				cursor_column = 0.5,
				empty_lines_between_mappings = true,
				disable_statuslines = true,
				paddings = { 1, 3, 3, 0 },
			},
			mappings = {
				execute_command = "<CR>",
				open_file = "o",
				open_file_split = "<c-o>",
				open_section = "<TAB>",
				open_help = "?",
			},
			colors = {
				background = "#1f2227",
				folded_section = "#56b6c2",
			},
			parts = { "header", "body", "clock" },
		})
	end,
}
