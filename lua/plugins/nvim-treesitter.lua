return {
    'nvim-treesitter/nvim-treesitter',
    tag = "v0.10.0",
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
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
        })
    end
}
