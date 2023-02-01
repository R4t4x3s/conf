local colorscheme="ofirkai"
local ok, theme = pcall(require, colorscheme)
local default = "vice"
local ofirkai_opts = {
    scheme = theme.scheme,
    custom_hlgroups = {},
    remove_italics = true
}
if not ok then
    print("colorscheme " .. colorscheme .. " not found!")
    vim.cmd('colorscheme' .. ' ' .. default)
    return
end
theme.setup(ofirkai_opts)
