return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "hyprlang"
  		},
  	},
  },

  {
    'AlphaTechnolog/pywal.nvim',
    name = 'pywal',
    lazy = false,    -- Load immediately for colorscheme setup
    priority = 1000, -- Ensure it loads before other UI plugins
    config = function()
        require('pywal').setup()
        vim.cmd.colorscheme('pywal')
    end
}}
