local ok, buffer = pcall(require,"bufferline")
if not ok then
    print("cannot find bufferline")
    return
end

local bind = vim.keymap.set

bind('n', '<leader>x', '<cmd>BufferClose<CR>', opt) -- quit 
bind('n', 'L', '<cmd>BufferNext<CR>', opts)
bind('n', 'H', '<cmd>BufferPrevious<CR>', opts)
