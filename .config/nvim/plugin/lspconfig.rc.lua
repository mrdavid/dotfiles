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

local capabilities = require('cmp_nvim_lsp').default_capabilities()

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'python' },
  cmd = { 'pyright-langserver', '--stdio' }
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end
