return {
	"folke/drop.nvim",
	event = "VimEnter",
	config = function()
		-- Define a list of available themes
		local themes = {
			{ name = "Github Dark", scheme = "github_dark" },
			{ name = "Gruvbox", scheme = "gruvbox" },
			{ name = "Kanagawa Wave", scheme = "kanagawa-wave" },
			{ name = "Kanagawa Dragon", scheme = "kanagawa-dragon" },
			{ name = "Tokyo Night Storm", scheme = "tokyonight-storm" },
			{ name = "Tokyo Night Night", scheme = "tokyonight-night" },
			{ name = "Tokyo Night Moon", scheme = "tokyonight-moon" },
			{ name = "Owl", scheme = "night-owl" },
			{ name = "Poimandres", scheme = "poimandres" },
		}

		-- Path to save the theme preference
		local theme_file = vim.fn.stdpath("config") .. "/theme.txt"

		-- Function to save theme to file
		local function save_theme(theme_name)
			local file = io.open(theme_file, "w")
			if file then
				file:write(theme_name)
				file:close()
			end
		end

		-- Create the Theme Picker function
		_G.ThemePicker = function()
			local pickers = require("telescope.pickers")
			local finders = require("telescope.finders")
			local conf = require("telescope.config").values
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")

			-- Function to apply the selected theme
			local function apply_theme(prompt_bufnr)
				local selection = action_state.get_selected_entry(prompt_bufnr)
				actions.close(prompt_bufnr)

				-- Apply the theme
				vim.cmd("colorscheme " .. selection.value.scheme)

				-- Save the theme choice to file
				save_theme(selection.value.scheme)

				-- Store in global variable for the current session
				vim.g.current_theme = selection.value.scheme

				print("Theme set to " .. selection.value.name .. " and saved for future sessions")
			end

			-- Create a picker with theme options
			pickers
				.new({}, {
					prompt_title = "Select Theme",
					finder = finders.new_table({
						results = themes,
						entry_maker = function(entry)
							return {
								value = entry,
								display = entry.name,
								ordinal = entry.name,
							}
						end,
					}),
					sorter = conf.generic_sorter({}),
					attach_mappings = function(prompt_bufnr, map)
						-- Apply theme on selection
						actions.select_default:replace(function()
							apply_theme(prompt_bufnr)
						end)
						return true
					end,
				})
				:find()
		end

		-- Load saved theme at startup
		local function load_saved_theme()
			local file = io.open(theme_file, "r")
			if file then
				local theme_name = file:read("*line")
				file:close()

				-- Make sure the theme exists before trying to apply it
				for _, theme in ipairs(themes) do
					if theme.scheme == theme_name then
						vim.cmd("colorscheme " .. theme_name)
						vim.g.current_theme = theme_name
						return true
					end
				end
			end
			return false
		end

		-- Try to load saved theme, or use github_dark as default
		if not load_saved_theme() then
			vim.cmd("colorscheme github_dark")
			vim.g.current_theme = "github_dark"
		end

		-- Set up the keybinding to use your theme picker function instead of Telescope's builtin
		vim.keymap.set("n", "<leader>th", function()
			_G.ThemePicker()
		end, { desc = "Pick Theme" })
	end,
}
