local ok, cmp = pcall(require,'cmp')
local required = "rami"
if not ok then
    print('cannot find cmp')
    return
end

local mappings = {
}



cmp.setup({
    mapping = mappings
})
