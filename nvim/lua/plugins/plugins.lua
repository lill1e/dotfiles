return {
    { "nvim-telescope/telescope.nvim",   tag = "0.1.8",      dependencies = { "nvim-lua/plenary.nvim" } },
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require("onedark").setup({ style = "dark" })
            vim.cmd("colorscheme onedark")
        end
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "williamboman/mason.nvim",         opts = {} },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                handlers =
                    function(name)
                        vim.lsp.enable(name)
                    end,
            })

            vim.lsp.enable("racket_langserver")
        end
    },
    { "neovim/nvim-lspconfig" },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                typescript = { "prettier" },
                javascript = { "prettier" },
                json = { "prettier" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback"
            }
        }
    },
    {
        "Saghen/blink.cmp",
        version = "1.*",
        opts = {
            keymap = {
                preset = "super-tab",
                ["<C-K>"] = { "select_prev", "fallback" },
                ["<C-J>"] = { "select_next", "fallback" },
                ["<C-CR>"] = { "select_and_accept" }
            },
            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 0,
                },
                ghost_text = {
                    enabled = true,
                },
                accept = {
                    auto_brackets = {
                        blocked_filetypes = { "racket" },
                    },
                },
            },
            cmdline = {
                keymap = {
                    preset = "inherit",
                },
                completion = {
                    menu = { auto_show = true },
                },
            },
            signature = { enabled = true }
        },
        opts_extend = { "sources.default" }
    },
    -- { "lewis6991/gitsigns.nvim", opts = {} },
    {
        "IogaMaster/neocord",
        opts = {
            logo             = "auto",
            logo_tooltip     = nil,
            main_image       = "language",
            client_id        = "1247941011724959785",
            log_level        = nil,
            debounce_timeout = 10,
            blacklist        = {},
            file_assets      = {
                tex = { "LaTeX", "tex" }
            },
            show_time        = true,
            global_timer     = true
        }
    },
    { "christoomey/vim-tmux-navigator",  lazy = false },
    { "HiPhish/rainbow-delimiters.nvim", lazy = false },
    { "wakatime/vim-wakatime",           lazy = false },
    { "echasnovski/mini.pairs",          config = true },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false
    },
    {
        "tpope/vim-fugitive",
        keys = {
            { "<leader>gs", vim.cmd.Git },
            { "<C-G>",      "<cmd>vert Git<CR>" },
            { "<C-L>",      "<cmd>leftabove vertical Git log<CR>" }
        }
    }
}
