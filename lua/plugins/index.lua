-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require 'plugins.neo-tree', -- File explorer
  require 'plugins.lualine', -- The bar at the bottom of the editor.
  require 'plugins.harpoon', -- Makes navigation easier. Hit tab for menu.
  require 'plugins.gitsigns', -- idk what this does.
  require 'plugins.which-key', -- Displays that menu at the bottom with all the possible key-bindings. Hit leader for example.
  require 'plugins.telescope', -- Fuzzy Finder (files, lsp, etc)
  require 'plugins.nvim-lspconfig', -- nvim-lspconfig
  require 'plugins.lazydev',
  require 'lua.plugins.luvit-meta',
  require 'plugins.conform', -- Autoformatting, formatting.
  require 'plugins.nvim-cmp', -- Autocompletion
  require 'plugins.theme', -- Colorscheme / Theme
  require 'plugins.todo-comments', -- Highlight todo, notes, etc in comments
  require 'plugins.mini', -- Around/Inside/Surround textobjects, comments, various independent plugins.
  require 'plugins.nvim-treesitter', -- Syntax highlighting, editing, and navigation.
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
