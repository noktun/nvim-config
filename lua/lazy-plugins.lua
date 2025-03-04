require('lazy').setup({
  'tpope/vim-sleuth',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'tpope/vim-fugitive',
  { 'windwp/nvim-autopairs', opts = {} },
  { 'windwp/nvim-ts-autotag', opts = {} },
  -- Themes
  {
    'sainnhe/everforest',
    -- priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'everforest'
    -- end,
  },
  {
    'Shatur/neovim-ayu',
    config = function()
      require('ayu').setup {
        mirage = true,
      }
    end,
    -- priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'ayu'
    -- end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        dark_variant = 'moon',
        variant = 'moon',
      }
    end,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'rose-pine'
    end,
  },
  -- Themes end
  { 'numToStr/Comment.nvim', opts = {} },
  { 'folke/zen-mode.nvim', opts = { width = 0.85 } },
  require 'noktun/plugins/gitsigns',
  require 'noktun/plugins/telescope',
  require 'noktun/plugins/lspconfig',
  require 'noktun/plugins/conform',
  -- require 'noktun/plugins/cmp',
  require 'noktun/plugins/blinkcmp',
  require 'noktun/plugins/todo-comments',
  -- require 'noktun/plugins/mini',
  require 'noktun/plugins/treesitter',
  require 'noktun.plugins.lint',
  require 'noktun.plugins.harpoon',
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

-- vim: ts=2 sts=2 sw=2 et
