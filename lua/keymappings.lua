local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local refactoringOpts = { noremap = true, silent = true, expr = false }
local wk = require("which-key")


map('n', '<Space>', '<NOP>', opts )

vim.g.mapleader = ' '
vim.b.mapleader = ' '

--map('i', '<A-j>', '-', opts )

-- ARROWS
map('n', 'j', 'h', opts )
map('n', 'k', 'j', opts )
map('n', 'i', 'k', opts )
map('v', 'j', 'h', opts )
map('v', 'k', 'j', opts )
map('v', 'i', 'k', opts )

-- INSERT MODE
map('n', 'o', 'i', opts)

-- NEW LINE
map('n', 'u', 'o<Esc>', opts)
map('n', 'U', 'O<Esc>', opts)

-- UNDO / REDO
map('n', 'm', 'u', opts)
map('n', 'M', '<c-r>', opts)

-- BETTER INDENTING
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- MOVE CODE BLOCKS
map('v', '<Up>', ":move-2<CR>gv=gv", opts)
map('v', '<Down>', ":move'>+<CR>gv=gv", opts)


-- ASCII made CHARACTERS
map('i', '<A-d>', '<Char-35>', opts)
map('i', '<A-y>', '<Char-64>', opts)
map('i', '<A-r>', '<Char-124>', opts)

-- PLUGINS KEYMAPPINGS

wk.register({

	-- LEADER KEY MAPPINGS

	['<Leader>'] = {

		-- HOP
		s = { ':HopChar2<CR>', 'HopChar2' },

		-- SEARCH HIGHLIGHT
		C = { ':set hlsearch!<CR>', 'Toggle search highlight' },

		-- NEOCLIP
		p = { ":lua require('telescope').extensions.neoclip.default()<CR>", 'Clipboard' },

		-- NVIM-TS-HINT-TEXTOBJECT
		m = {"<cmd>lua require('tsht').nodes()<CR>", 'Select text object'},

		-- CHANGE COLORSCHEME
		cc = { '<cmd>Telescope colorscheme<CR>', 'Change colorscheme' },

		-- TOGGLETERM
		-- ñ = {
		-- 	name = 'Terminal',
		-- 	f = { ':ToggleTerm direction=float<CR>', 'Floating term' },
		-- 	w = { ':ToggleTerm direction=window<CR>', 'Window term' },
		-- },

		-- SAVE AND EXIT
		w = { ':w!<CR>', 'Save' },
		q = { ':q<CR>', 'Exit' },

		-- NVIM-TREE
		n = { ':NvimTreeToggle<CR>', 'NvimTree toggle' },
		r = { ':NvimTreeRefresh<CR>', 'NvimTree refresh' },

		-- TELESCOPE
	  f = { ':Telescope find_files<CR>', 'Find Files' },
	  g = { ':Telescope live_grep<CR>', 'Grep' },
	  b = { ':Telescope buffers<CR>', 'Buffers' },
	  h = { ':Telescope help_tags<CR>', 'Help tags' },

		-- TMUX
		j = { ':TmuxNavigateLeft<CR>', 'Navigate left' },
		l = { ':TmuxNavigateRight<CR>', 'Navigate right' },
		i = { ':TmuxNavigateUp<CR>', 'Navigate up' },
		k = { ':TmuxNavigateDown<CR>', 'Navigate down' },
		u = { ':FocusSplitNicely<CR>', 'Spawn master stack layout buffer' },

		-- LSP
		ca = { '<cmd>lua vim.lsp.buf.code_action()<CR>', 'Code actions' },
		F = { '<cmd>lua vim.lsp.buf.formatting()<CR>', 'Format buffer' },
		e = { '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', 'Line diagnostics' },
		D = { '<cmd>lua vim.lsp.buf.type_definition()<CR>', 'Buffer type definition' },
		rn = { '<cmd>lua vim.lsp.buf.rename()<CR>', 'Rename buffer' },
		lf = { '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', 'List workspace folders' },
		sh = { '<cmd>lua vim.lsp.buf.signature_help()<CR>', 'Signature help' },
		bh = { '<cmd>lua vim.lsp.buf.hover()<CR>', 'Buffer hover' }

  },

	-- SYMBOLS OUTLINE
	tt = { '<cmd>SymbolsOutline<CR>', 'Toggle symbols tree' },

	-- VIM FUGITIVE
	F = {
		name = 'Vim fugitive',
		s = { ':G<CR>', 'Git status' },
		j = { ':diffget //2<CR>', 'left diff' },
		l = { ':diffget //3<CR>', 'right diff' }
	},

	-- SPLITS
	s = {
		name = 'Split',
		s = { ':vsplit<CR>', 'vertical' },
		h = { ':split<CR>', 'horizontal' },
		o = { ':only<CR>', 'full screen' }
	},

	-- NVIM TROUBLE
	d = {
		name = 'Diagnostic',
		l = {
			name = 'list',
			w = { '<cmd>TroubleToggle workspace_diagnostics<CR>', 'workspace' },
			d = { '<cmd>TroubleToggle document_diagnostics<CR>', 'document' },
			q = { '<cmd>TroubleToggle quickfix<CR>', 'quickfix' },
		},
	},

	-- LSP GO
	g = {
		name = 'Go',
		D = { '<cmd>lua vim.lsp.buf.declaration()<CR>', 'declaration' },
		d = { '<cmd>lua vim.lsp.buf.definition()<CR>', 'definition' },
		i = { '<cmd>lua vim.lsp.buf.implementation()<CR>', 'implementation' },
		r = { '<cmd>lua vim.lsp.buf.references()<CR>', 'references' },
		-- GOLANG NVIM
		f = {"<cmd>lua require('go.format').gofmt()<CR>", 'Format .go file'}
	},

	-- NAVIGATE BUFFERS
	e = {
		name = 'Buffer',
		j = { ':BufferPrevious<CR>', 'Previous buffer' },
		l = { ':BufferNext<CR>', 'Next buffer' },
		i = { ':BufferLast<CR>', 'Last buffer' },
		k = { ':BufferGoto1<CR>', 'First buffer' },
		d = { ':BufferClose<CR>', 'Delete buffer' }
	},

	-- LSPSAGA
	S = {
		f = { "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", 'Lsp find' },
		ca = { "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", 'Saga code actions' },
		k = { "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", 'Hover docs' },
		sh = { "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", 'Signature help' },
		rn = { "<cmd>lua require('lspsaga.rename').rename()<CR>", 'Rename foo.bar' },
		pd = { "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", 'Preview definition' },
		ld = { "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", 'Show line diagnostics' }
	}
})

-- REFACTORING

-- wk.register({
-- 	['<Leader>'] = {
-- 		r = {
-- 			name = 'Refactor',
-- 			e = { "[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]]", 'Extract function', expr=false },
-- 			f = { "[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]]", 'Extract function to file',  expr=false },
-- 			t = { "[[ <Esc><Cmd>lua M.refactors()<CR>]]", 'Telescope list refactors', expr=false }
-- 		}
-- 	}
-- }, { mode = 'v' })


map("v", "<Leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], refactoringOpts)
map("v", "<Leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], refactoringOpts)
map("v", "<Leader>rt", [[ <Esc><Cmd>lua M.refactors()<CR>]], refactoringOpts)

vim.cmd[[
	imap <expr> <C-l>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>'
	smap <expr> <C-l>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-l>'
	imap <expr> <C-j> 	vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-j>'
	smap <expr> <C-j> 	vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-j>'
]]
