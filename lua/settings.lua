vim.o.termguicolors = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.mouse = "a"
vim.o.sw = 2
vim.o.tabstop = 2
vim.o.clipboard = "unnamedplus"
--vim.o.shell = 'powershell'

vim.bo.sw = 2
vim.bo.tabstop = 2

vim.g.encoding = 'utf-8'
vim.g.syntax = 'enable'
vim.g.ruler = true
vim.g.pumheight = 10
vim.g.showtabline = 2
vim.g.laststatus = 2
vim.g.noshowmode = true
vim.g.updatetime = 300
vim.g.timeoutlen = 50
vim.g.incsearch = true
vim.g.hidden = true

-- COLORSCHEME ENV VARS

vim.g.material_style = 'darker'

if (vim.g.colors_name  == 'gruvbox-material') then
	vim.g.gruvbox_material_palette = 'mix'
	vim.g.gruvbox_material_diagnostic_text_highlight = 1
	vim.g.gruvbox_material_diagnostic_line_highlight = 1
	vim.g.gruvbox_material_cursor = 'purple' -- only work in gui
end

if (vim.g.colors_name  == 'everforest') then
	vim.g.background = 'dark'
	vim.g.everforest_background = 'hard'
	vim.g.everforest_enable_italic = 1
end

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.numberwidth = 1
vim.wo.wrap = false
vim.wo.number = true
vim.wo.cursorline = false
vim.wo.signcolumn = 'yes'


vim.opt.termguicolors = true

-- vim.cmd [[
-- 	set t_Co=256
-- ]]

vim.cmd [[ set termguicolors ]]

vim.cmd [[ let g:ruby_host_prog = '/home/fithurriague/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host' ]]

-- PLUGINS


-- NVIM-TREE
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_higlight_opened_files = 1

-- TELESCOPE
vim.g.dashboard_default_executive = 'telescope'

-- CURSORLINE
-- vim.g.cursorline_timeout = 300

-- POLYGLOT
vim.cmd [[ let g:polyglot_disabled = ['java', 'javascript', 'html', 'php', 'css', 'json', 'lua', 'vim'] ]]

-- COMPLETION
vim.cmd [[ set completeopt=menu,menuone,noselect ]]

-- possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
vim.cmd [[ let g:completion_enable_snippet = 'vim-vsnip' ]]

vim.cmd [[ let g:completion_chain_complete_list = [{'complete_items': ['lsp', 'snippet', 'buffer', 'ts']} ,{'mode': '<c-p>'},{'mode': '<c-n>'}] ]]

-- DASHBOARD
vim.cmd [[
  let g:dashboard_custom_header = [ "             __           __", "          ,888888       888888.", "        ,8888  8888   8888  8888,_", "       ,8888888888888888888888888888,.", "    _,88888888888888888888888888888888888", " _,888888888 @ @@   8   @@ @@@@@ 888888'", "888888888 @@@@@@@@@@@@@@@@@@@@@ 88888'", "  `88888 @@  @@@@@@@@@@@@@@@@@ 88888'", "   `88 @@@  @@@  @@@@@@@@@@@@@ 8888'", "      @@@  @@@  @@@@@@@  @@@@ 8888'", "     @@@   @@@ @@@@@@   @@@ 88888'", "    @@@   @@@ @@@@@@   @@@ 88888'", "    @@@   @@@ @@@@@@   @@@ 8888'", "    @@@  @@@@@@@@@@   @@@ 88888", "     @@@@@@@@@@@@@@   @@@ 888'", "      @@@@@@@@@@@@@@ @@@' '", "       @@@@@@@@@@@@@@@@'", "        `@@@@@@@@@@@@@'", "            `@@@@@@'" ]

]]

-- GET RID OF THE --SOMETHING-- THING
vim.cmd [[
	set noshowmode  " to get rid of thing like --INSERT--
	set noshowcmd  " to get rid of display of last command
	set shortmess+=F  " to get rid of the file name displayed in the command line bar
]]
