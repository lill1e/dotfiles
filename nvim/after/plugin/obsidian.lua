require("obsidian").setup({
    workspaces = {
        {
            name = "main",
            path = "~/Documents/Obsidian-Vault"
        }
    },

    completion = {
        nvim_cmp = true
    },

    note_id_func = function(title)
        return title
    end
})
