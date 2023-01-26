local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local ok , lazy = pcall(require, 'lazy')
if not ok then
    print("no lazy")
    return
end

lazy.setup({
    { 
        "navarasu/onedark.nvim" 
    },
    { 
        "nvim-treesitter/nvim-treesitter",
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim"
        }
    }
})

