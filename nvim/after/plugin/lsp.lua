local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { "tsserver", "rust_analyzer", "eslint", "lua_ls", "clangd", "gopls", "texlab", "jdtls" },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

lsp.set_preferences({ sign_icons = {} })
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local autoformat = function(bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format()
        end
    })
end
lsp.on_attach(function(client, bufnr)
    autoformat(bufnr)
end)
cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-i>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-o>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-p>"] = cmp.mapping.confirm({ select = true }),
        ["<C-u>"] = cmp.mapping.complete()
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
  })
