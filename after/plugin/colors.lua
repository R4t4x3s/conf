local colorscheme="onedark"
local ok, theme = pcall(require, colorscheme)
local default = "industry"

if not ok then
    print("colorscheme " .. colorscheme .. " not found!")
    vim.cmd('colorscheme' .. ' ' .. default)
    return
end
theme.setup({
    style = 'deep',
    code_style = {
        comments = 'none'
    }
})

theme.load()
