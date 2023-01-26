local ok, buffer = pcall(require,"bufferline")
if not ok then
    print("cannot find bufferline")
    return
end
buffer.setup({})
