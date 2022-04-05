vim.opt.listchars = {
    eol = "↴",
}

require("indent_blankline").setup {
	show_end_of_line = true,
	use_treesitter = true,
	show_current_context = true,
	filetype_exclude =  { "dashboard", ".txt", 'help', 'packer', 'lsp-installer' } ,
	buftype_exclude = { "terminal", "dashboard", ".txt", 'help', 'packer', 'lsp-installer' }
}
