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
        "smoka7/hop.nvim",
        version = "*",
        opts = {
            keys = "etovxqpdygfblzhckisuran",
        },
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
        },
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
        "neovim/nvim-lspconfig",
    },

    ----------------------------------------------------------------------
    -- Mason: manage LSP stuff (linters, formatters, etc.)
    ----------------------------------------------------------------------

    {
        "williamboman/mason.nvim",
    },

    ----------------------------------------------------------------------
    -- CMP: autocomplete
    ----------------------------------------------------------------------

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline"
        },
    },

    ----------------------------------------------------------------------
    -- Catppuccin: colorscheme
    ----------------------------------------------------------------------

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },

    ----------------------------------------------------------------------
    -- Colorizer: show color in text (#80FF00)
    ----------------------------------------------------------------------

    {
        "norcalli/nvim-colorizer.lua",
        event = "BufEnter",
        opts = { "*" },
    },

    ----------------------------------------------------------------------
    -- Telescope: fast project navigation in general
    ----------------------------------------------------------------------

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            {
                "iruzo/ripgrep.nvim",
                version = "*",
                build = ':lua require("rg_setup").install_rg()',
            },
        },
    },

    ----------------------------------------------------------------------
    -- Trouble: fast navigation over errors
    ----------------------------------------------------------------------

    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
    },

    ----------------------------------------------------------------------
    -- None-LS: formatting
    ----------------------------------------------------------------------

    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },
    },

    ----------------------------------------------------------------------
    -- Autoclose brackets
    ----------------------------------------------------------------------

    {
        "m4xshen/autoclose.nvim",
    },
})
