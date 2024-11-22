vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree)
vim.keymap.set("n", "<leader>w", ":vertical split<CR>")
vim.keymap.set("n", "<leader>h", "<C-W>h")
vim.keymap.set("n", "<leader>j", "<C-W>j")
vim.keymap.set("n", "<leader>k", "<C-W>k")
vim.keymap.set("n", "<leader>l", "<C-W>l")
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>n", vim.cmd.noh)
vim.keymap.set("n", "<C-k>", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>q", vim.cmd.quit)
vim.keymap.set("n", "<leader>s", "z=")
vim.keymap.set("n", "<M-h>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<M-j>", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "<M-k>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<M-l>", ":TmuxNavigateRight<CR>")
vim.keymap.set("n", "<leader><Up>", ":vertical resize +5<CR>")
vim.keymap.set("n", "<leader><Down>", ":vertical resize -5<CR>")
vim.keymap.set("n", "<leader>e", ":vnew<CR>")
