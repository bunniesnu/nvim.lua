return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                numbers = "ordinal",
                close_command = "bdelete! %d",
                right_mouse_command = "bdelete! %d",
                indicator = {
                    icon = "▎",
                    style = "icon"
                },
                buffer_close_icon = "󰅖",
                modified_icon = "●",
                close_icon = "",
                left_trunc_marker = "",
                right_trunc_marker = "",
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }
                },
                show_buffer_icons = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
                seperator_style = "thin",
                always_show_bufferline = true,
                enfore_regular_tabs = false,
                persist_buffer_sort = true
            }
        })
    end
}
