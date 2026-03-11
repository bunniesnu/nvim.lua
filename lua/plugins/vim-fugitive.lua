local mapKey = require("utils.keyMapper").mapKey
return {
    {
        "tpope/vim-fugitive",
        config = function()
            mapKey('<leader>gs', ":Git<cr>")
            mapKey('<leader>ga', ":Git add .<cr>")
            mapKey('<leader>gc', ":Git commit<cr>")
            mapKey('<leader>gp', ":Git push<cr>")
            mapKey('<leader>gl', ":Git pull<cr>")
        end
    }
}
