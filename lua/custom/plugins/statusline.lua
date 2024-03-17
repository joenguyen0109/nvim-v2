return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    return {
      sections = {
        lualine_a = { 'filename' },
        lualine_b = { '' },
        lualine_c = { '' },
        lualine_x = { '' },
        lualine_y = { '' },
        lualine_z = { 'branch', 'diff', 'diagnostics' },
      },
      -- inactive_sections = {
      --   lualine_a = {},
      --   lualine_b = {},
      --   lualine_c = { 'filename' },
      --   lualine_x = { 'location' },
      --   lualine_y = {},
      --   lualine_z = {},
      -- },
    }
  end,

  -- opt = {
  --   sections = {
  --     lualine_a = { '' },
  --     lualine_b = {},
  --     lualine_c = { 'filename' },
  --     lualine_x = {},
  --     lualine_y = {},
  --     lualine_z = {},
  --   },
  --   inactive_sections = {
  --     lualine_a = {},
  --     lualine_b = {},
  --     lualine_c = { 'filename' },
  --     lualine_x = { 'location' },
  --     lualine_y = {},
  --     lualine_z = {},
  --   },
  -- },
}
