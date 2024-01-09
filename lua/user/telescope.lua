local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader><Tab>', builtin.buffers, {})

-- vim.api.nvim_set_hl(0,"TelescopeNormal",{bg="none"})
