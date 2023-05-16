local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]]
      vim.api.nvim_command [[autogroup END ]]
  end
end

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  filetypes = { 'python' },
  cmd = { 'pyright-langserver', '--stdio' }
}
