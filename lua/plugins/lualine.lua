return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
                globalstatus = true,
                icons_enabled = true,
                component_seperators = { left = "|", right = "|" },
                section_seperators = { left = "", right = "" },
                disabled_filetypes = {
                    statusline = { "dashboard", "alpha" }
                }
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff" },
                lualine_c = {
                    {
                        "filename",
                        path = 1,
                        symbols = {
                            modified = " ●",
                            readonly = " [R]",
                            unnamed = "[No Name]"
                        }
                    }
                },
                lualine_x = { "encoding", "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {
                    {
                        "filename",
                        path = 1,
                        symbols = {
                            modified = " ●",
                            readonly = " [R]",
                            unnamed = "[No Name]"
                        }
                    }
                },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {}
            },
            extensions = {
                "neo-tree",
                "lazy",
                "mason"
            }
        })
    end
}
