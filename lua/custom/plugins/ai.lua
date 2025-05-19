return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	version = false,
	opts = {
		use_cwd_as_project_root = false,
		provider = "claude",
		disable_tools = true,
		system_prompt = function()
			return "Do not edit the code in the editor. Only display it here. I will handle the editing manually."
		end,
		windows = {
			edit = {
				start_insert = false,
			},
			ask = {
				start_insert = false,
			},
			insert_mode = false,
			input = {
				prefix = "> ",
				height = 8,
			},
		},
		claude = {
			endpoint = "https://api.anthropic.com",
			model = "claude-3-7-sonnet-20250219",
			timeout = 30000,
			temperature = 0,
			max_tokens = 4096,
			disable_tools = true,
		},
	},
	build = "make",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"echasnovski/mini.pick",
		"nvim-telescope/telescope.nvim",
		"hrsh7th/nvim-cmp",
		"ibhagwan/fzf-lua",
		"nvim-tree/nvim-web-devicons",
		"zbirenbaum/copilot.lua",
		{
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
				},
			},
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
	config = function(_, opts)
		require("avante").setup(opts)
	end,
}
