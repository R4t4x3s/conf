local ok, buffer = pcall(require,"bufferline")
if not ok then
    print("cannot find bufferline")
    return
end
buffer.setup({})

local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

bind('n', '<leader>x', '<cmd>BufferClose<CR>', opts) -- quit 
bind('n', 'L', '<cmd>BufferNext<CR>', opts)
bind('n', 'H', '<cmd>BufferPrevious<CR>', opts)
