local mapKey = require("utils.keyMapper").mapKey
local closeBuffer = require("utils.buffer").closeBuffer

-- Neotree
mapKey('<leader>e', ':Neotree toggle<cr>')
mapKey('<leader>n', ':Neotree focus<cr>')

-- vim-fugitive
mapKey('<leader>gs', ":Git<cr>")
mapKey('<leader>ga', ":Git add .<cr>")
mapKey('<leader>gd', ":Git diff<cr>")
mapKey('<leader>gc', ":Git commit<cr>")
mapKey('<leader>gp', ":Git push<cr>")
mapKey('<leader>gl', ":Git pull<cr>")

-- Bufferline
mapKey('<Tab>', ':BufferLineCycleNext<cr>')
mapKey('<S-Tab>', ':BufferLineCyclePrev<cr>')
mapKey('<leader>x', closeBuffer)

-- indent
mapKey('<', '<gv', 'v')
mapKey('>', '>gv', 'v')

-- pane navigation
mapKey('<C-h>', '<C-w>h') -- Left
mapKey('<C-j>', '<C-w>j') -- Down
mapKey('<C-k>', '<C-w>k') -- Up
mapKey('<C-l>', '<C-w>l') -- Right
