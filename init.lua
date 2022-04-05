require('plugins')
require('keymappings')
require('settings')
require('colorscheme')

-- PLUGINS
require('lsp')
require('dap.ui')
require('dap.virtual-text')
require('dap.php')
require('dap.go')

-- CONFIGS
require('plugin-setup.nvim-treesitter')
require('plugin-setup.telescope')
require('plugin-setup.nvim-autopairs')
require('plugin-setup.indent-blankline')
require('plugin-setup.neoscroll')
require('plugin-setup.trouble')
require('plugin-setup.nv-cmp')
require('plugin-setup.neorg')
require('plugin-setup.focus')
require('plugin-setup.refactoring')
require('plugin-setup.nvim-transparent')
require('plugin-setup.lualine')
require('plugin-setup.nvim-go')

-- require('nv-galaxyline')
-- require('plugin-setup.snippets')
-- require('plugin-setup.toggleterm')
-- require('plugin-setup.completion-nvim')

-- LSP CONFIGS
require('plugin-setup.lsp-plugins.lspsaga')
require('plugin-setup.lsp-plugins.lspkind')
require('plugin-setup.lsp-plugins.lsp_signature')
