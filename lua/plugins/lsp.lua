local keyMapper = require("utils.keyMapper").mapKey
return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls",
                    "clangd",
                    "cmake",
                    "cssls",
                    "docker_language_server",
                    "gopls",
                    "html",
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                    "svelte",
                    "tailwindcss",
                    "ts_ls"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            keyMapper('K', vim.lsp.buf.hover)
            keyMapper('gd', vim.lsp.buf.definition)
            keyMapper('<leader>ca', vim.lsp.buf.code_action)
        end
    }
}
