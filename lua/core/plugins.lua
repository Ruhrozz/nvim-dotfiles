local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


require("lazy").setup({

----------------------------------------------------------------------
-- Hop: jump anywhere in a document with as few keystrokes as possible
----------------------------------------------------------------------

    {
        'smoka7/hop.nvim',
        version = "*",
        opts = {
            keys = 'etovxqpdygfblzhckisuran'
        }
    },

----------------------------------------------------------------------
-- NeoTree: browse the file system and other tree like structures
----------------------------------------------------------------------

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim",
        }
    },

----------------------------------------------------------------------
-- Treesitter: highlight syntax
----------------------------------------------------------------------

    {
        "nvim-treesitter/nvim-treesitter",
    },

----------------------------------------------------------------------
-- LSP-config: language server protocol
----------------------------------------------------------------------

    {
        "williamboman/mason.nvim",
    },

    {
        "neovim/nvim-lspconfig",
    },

    {
        "hrsh7th/nvim-cmp",
    },

    {
        "hrsh7th/cmp-nvim-lsp",
    },

----------------------------------------------------------------------
-- Catppuccin: colorscheme
----------------------------------------------------------------------

    {
        "catppuccin/nvim",
        name="catppuccin",
        priority = 1000,
    },

    {
        "norcalli/nvim-colorizer.lua",
        event = "BufEnter",
        opts = { "*" }
    },

    {
        'nvim-telescope/telescope.nvim',
    },

    {
        'iruzo/ripgrep.nvim',
        version = '*',
        build = ':lua require("rg_setup").install_rg()'
    },

    {
        "folke/trouble.nvim", dependencies = "nvim-tree/nvim-web-devicons",
    }
})
