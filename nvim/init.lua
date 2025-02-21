require("lillie")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.conceallevel = 2
vim.opt.cursorline = true
vim.opt.splitright = true

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt_local.expandtab = false
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "tex", "text", "markdown" },
    callback = function()
        vim.opt.spell = true
        vim.opt.spelllang = "en_gb"
    end
})

vim.filetype.add({
    extension = {
        pf = "deduce"
    }
})
