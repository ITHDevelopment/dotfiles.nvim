local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'jdtls', 'tsserver', 'jsonls' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    -- on_attach = require'completion'.on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- TODO: Figure out java with lombok setup

-- nvim_lsp["jdtls"].setup {
-- 	on_attach = require'completion'.on_attach,
-- 	cmd =  { "-javaagent:C:/Program Files/lombok/lombok.jar" }
-- }

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {
    -- on_attach = require'completion'.on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }

  if server.name == "gopls" then
    opts.settings = {
      gopls = {
        buildFlags = {"-tags=linux"},
        experimentalWorkspaceModule = true
      },
    }
    -- opts.cmd_env = {GOFLAGS="-tags=linux,windows"}
    opts.root_dir = function(fname)
      return nvim_lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
    end;
  end

  -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
  server:setup(opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end)

-- LSP COLORS

require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
