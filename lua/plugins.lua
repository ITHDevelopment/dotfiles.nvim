return require('packer').startup({function(use)

  -- PACKER // manages itself
  use 'wbthomason/packer.nvim'

  -- DASHBOARD
  use 'glepnir/dashboard-nvim'

  -- GIT INTEGRATION
  use 'tpope/vim-fugitive'

  -- PANE NAVIGATOR
  use 'christoomey/vim-tmux-navigator'
  use 'beauwilliams/focus.nvim'

	-- INDENTING
	use "lukas-reineke/indent-blankline.nvim"

  -- PARENTHESIS
  use 'windwp/nvim-autopairs'

  -- SCROLLING
  use 'karb94/neoscroll.nvim'

  -- CURSORLINE
  use 'xiyaowong/nvim-cursorword'

  -- TAB MANAGER
  use 'romgrk/barbar.nvim'

  -- TERMINAL INTEGRATION
  -- use "akinsho/toggleterm.nvim"

	-- DEBUG
  use 'Pocco81/DAPInstall.nvim'
	use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'leoluz/nvim-dap-go'
  -- dependencies
  use 'jbyuki/one-small-step-for-vimkind'

  -- GOLANG
  use 'ray-x/go.nvim'
	-- dependencies
	use {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}

	-- POLYGLOT -- treesitter complement
	use 'sheerun/vim-polyglot'

  -- LSP DIAGNOSTICS
  use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'glepnir/lspsaga.nvim' -- Diagnostics UI
	use 'ray-x/lsp_signature.nvim' -- Function signature when tiping
	use 'onsails/lspkind-nvim' -- vscode like pictograms
	use 'folke/lsp-colors.nvim' -- Add missing diagnostic colors to lsp unsupported colorschemes
	use 'folke/trouble.nvim' -- Diagnostics loclist
	use 'simrat39/symbols-outline.nvim' -- Tree-like view

	-- REFACTORING
	use 'ThePrimeagen/refactoring.nvim'

  -- SNIPPETS
	use	'hrsh7th/vim-vsnip'
	use	'hrsh7th/vim-vsnip-integ'

	-- ORGANIZE

	-- COMMENTS
	use 'tpope/vim-commentary' -- Integration with nvim-ts-context-commentstring

	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	}

  -- || COMPLETION ||

  -- COMPLETION.NVIM
  -- use 'nvim-lua/completion-nvim'
	-- use 'steelsojka/completion-buffers'
	-- use 'nvim-treesitter/completion-treesitter'
  -- use 'norcalli/snippets.nvim'

  -- NVIM-CMP
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',

      -- Snippet source
      'hrsh7th/cmp-vsnip'
    }
  }

  -- ICONS

  -- NVIM-TREE and ICONS
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- KEY BINDINGS HELPER
  use {
    'folke/which-key.nvim',
    require("which-key").setup()
  }

  -- CLIPBOARD MANAGER
  use {
    'AckslD/nvim-neoclip.lua',
    config = function()
      require('neoclip').setup({
				history = 50,
				filter = nil,
      })
    end
  }

  -- STATUSLINE
  use 'nvim-lualine/lualine.nvim'

  -- use {
  --   'glepnir/galaxyline.nvim',
  --   branch = 'main',
  --   -- Statusline
  --   config = function()
  --     require "nv-galaxyline"
  --   end
  -- }
  -- dependencies
  -- use {
  --  "Th3Whit3Wolf/Dusk-til-Dawn.nvim",
  --  opt = true,
  --  branch = "main",
  --  setup = function()
  --    vim.g.dusk_til_dawn_light_theme = "space-nvim"
  --    vim.g.dusk_til_dawn_dark_theme = "space-nvim"
  --    vim.g.dusk_til_dawn_morning = 7
  --    vim.g.dusk_til_dawn_night = 19
  --  end
  -- }

  -- HOP easymotion
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  -- COLORSCHEMES
  use "rebelot/kanagawa.nvim"
  use 'gruvbox-community/gruvbox'
  use 'Mofiqul/dracula.nvim'
  use 'folke/tokyonight.nvim'
  use 'lifepillar/vim-gruvbox8'
  use 'sainnhe/gruvbox-material'
  use 'xiyaowong/nvim-transparent'
  use ({
    "catppuccin/nvim",
    as = "catppuccin"
  })

  -- use 'christianchiarulli/nvcode-color-schemes.vim'
  -- use 'colepeters/spacemacs-theme.vim'
  -- use 'Shatur/neovim-ayu'
  -- use 'ray-x/aurora'

  -- use({
    --     'rose-pine/neovim',
    --     as = 'rose-pine',
    --     config = function()
      --       -- Options (see available options below)
      --       vim.g.rose_pine_variant = 'moon'
      --     end
      -- })

	-- TREESITTER
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground'
	use 'JoosepAlviste/nvim-ts-context-commentstring'
	use 'mfussenegger/nvim-ts-hint-textobject'
  use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'p00f/nvim-ts-rainbow'
	use {
		'windwp/nvim-ts-autotag',
		event = "InsertEnter",
		config = function()
			require('nvim-ts-autotag').setup()
		end,
	}

	-- COLORIZER
	use {
		"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup({ "*" }, {
					RGB = true, -- #RGB hex codes
					RRGGBB = true, -- #RRGGBB hex codes
					RRGGBBAA = true, -- #RRGGBBAA hex codes
					rgb_fn = true, -- CSS rgb() and rgba() functions
					hsl_fn = true, -- CSS hsl() and hsla() functions
					css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
				})
		end,
	}

end,
config = {
	display = {
		open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
	}
}})
