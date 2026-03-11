local clb = function()
    local current = vim.api.nvim_get_current_buf()
    vim.cmd("bnext")
    if vim.api.nvim_get_current_buf() == current then
        vim.cmd("bprevious")
    end
    vim.cmd("bdelete " .. current)
end

return { closeBuffer = clb }
