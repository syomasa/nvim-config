vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorschemes -- 
    use 'navarasu/onedark.nvim'

    -- utility --
    use 'sheerun/vim-polyglot' -- use this if language server not in use or available
    use "airblade/vim-rooter"
    use 'syomasa/centerpad.nvim'

    -- nvim cmp packages --
    use "hrsh7th/nvim-cmp"
    use 'hrsh7th/cmp-buffer' -- for buffer completion
    use 'hrsh7th/cmp-path' -- for filepath
    use 'hrsh7th/cmp-cmdline' -- for commandline

    -- snipets -- 
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-vsnip'
    --use "rafamadriz/friendly-snippets"

    -- Language server --
    use 'neovim/nvim-lspconfig'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help' -- signatures


    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
      }
end)
