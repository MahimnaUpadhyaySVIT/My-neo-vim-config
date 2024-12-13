vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- package manager
  use 'wbthomason/packer.nvim' 

  -- for filtering files
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use 'williambolin/nvim-lspconfig'
  use 'neovim/nvim-lsp-installer'
  use { 'neovim/nvim-lspconfig' }
  use { 'williambolin/nvim-lspconfig' }
  use { 'jose-romero/nvim-lspinstall' }

  -- for highlighting the syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/playground'

  -- for navigating files from one place to another
  use "theprimeagen/harpoon"

  -- for showcasing all the changes in tree format
  use "mbbill/undotree"

  -- for github 
  use "tpope/vim-fugitive"

  -- for color scheme
  use {
    "catppuccin/nvim", 
    as = "catppuccin", 
    config = function()
      vim.cmd('colorscheme catppuccin')
    end
  }

end)
