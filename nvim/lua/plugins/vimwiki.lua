return {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_list = {
            {
                syntax = "markdown",
                ext = ".md",
                path = "/mnt/files/nextcloud/wiki/",
                dairy_rel_path = "notes"
            },
        }
        vim.g.vimwiki_global_ext = 0
        vim.g.vimwiki_auto_header = 1
    end,
}
