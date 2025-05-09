-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use({
        "catppuccin/nvim",
        config = function()
            vim.cmd("colorscheme catppuccin-frappe")
        end
    })

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" }
        }
    }

    use("lewis6991/gitsigns.nvim")
    use("iamcco/markdown-preview.nvim")
    use("lervag/vimtex")
    use { "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" }
    use("IogaMaster/neocord")
    use("mfussenegger/nvim-jdtls")
    use("christoomey/vim-tmux-navigator")
    use({
        "chomosuke/typst-preview.nvim",
        run = function()
            require "typst-preview".update()
        end
    })
    use("HiPhish/rainbow-delimiters.nvim")
    use("rareitems/hl_match_area.nvim")
    use("wakatime/vim-wakatime")
    use({
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({})
        end
    })
end)
