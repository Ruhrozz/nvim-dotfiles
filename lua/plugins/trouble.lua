require("trouble").setup()

vim.keymap.set("n", "<leader>td", "<cmd>Trouble diagnostics focus=true<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble symbols focus=true<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
