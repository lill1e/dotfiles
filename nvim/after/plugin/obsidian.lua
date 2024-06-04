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

    open_notes_in = "vsplit",

    note_id_func = function(title)
        return title
    end
})
