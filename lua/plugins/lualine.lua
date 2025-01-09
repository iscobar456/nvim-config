return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto', -- or specify a theme like 'gruvbox'
        section_separators = '', -- customize separators
        component_separators = '', -- customize component separators
      },
      sections = {
        lualine_a = { 'mode' }, -- This is where you display the mode
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = { 'filetype', 'encoding', 'location' },
        lualine_y = { 'progress' },
        lualine_z = { 'os.date("%H:%M")' },
      },
    }
  end,
}
