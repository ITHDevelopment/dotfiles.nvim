require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.5
    end
  end,
  open_mapping = [[<Leader>ñ]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_terminals = true,
  shading_factor = 0.5,
  start_in_insert = true,
  insert_mappings = false, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'vertical',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = 'powershell',
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'single',
    width = 120,
    height = 80,
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}
