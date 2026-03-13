return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require'nvim-treesitter'.setup {
            ensure_installed = {
                "bash",
                "c",
                "cmake",
                "cpp",
                "css",
                "dockerfile",
                "gitignore",
                "go",
                "gomod",
                "gosum",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "nginx",
                "python",
                "rust",
                "ssh_config",
                "svelte",
                "tsx",
                "typescript",
                "xml",
                "yaml",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        }
    end
}
