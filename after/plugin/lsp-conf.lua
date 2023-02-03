local ok, mason, lsp_conf, mason_lsp_conf
ok, mason = pcall(require, 'mason')
if not ok then
    print("cannot find mason")
    return
end
ok , mason_lsp_conf = pcall(require,"mason-lspconfig")
if not ok then
    print("cannot find mason-lspconfig")
    return
end
ok , lsp_conf = pcall(require,"lspconfig")
if not ok then
    print("cannot find lsp_conf")
    return
end
local lua_lsp = lsp_conf.sumneko_lua
-- ALWAYS SETUP MASON THEN MASON_LSPCONF THEN LSPCONF
-- ---------------------------------------------------
-- ---------------------------------------------------
--  MASON
-- ---------------------------------------------------
-- ---------------------------------------------------
local mason_confg = {
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
}
mason.setup(mason_confg)
--  MASON_LSP_CONF
-- ---------------------------------------------------
-- ---------------------------------------------------
mason_lsp_conf.setup({})

--  LSP_CONF
-- ---------------------------------------------------
-- ---------------------------------------------------
local lua_attach = function()
    local opts = { noremap = true, silent = true, buffer=0 } -- activate mapping only for the current buffer
    vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc') -- I_<c-x><c-o>
    vim.keymap.set("n","K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n","<leader>gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n","<leader>gt", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n","<leader>gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n","<leader>gr", vim.lsp.buf.references, opts)
end
lua_lsp.setup({
    on_attach = lua_attach,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            }
        }
    }
})


