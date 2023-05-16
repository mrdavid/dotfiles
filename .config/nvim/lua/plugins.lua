local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
   requires = { 'tjdevries/colorbuddy.vim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- file icons
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'L3MON4D3/LuaSnip' -- snippet engine for cmp
  use 'onsails/lspkind-nvim' -- vscode like pictograms
  use 'hrsh7th/cmp-buffer'  -- nvim cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim cmp source for neovims built-in lsp
  use 'hrsh7th/nvim-cmp' -- completion
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)
