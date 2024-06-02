require("trouble").setup()

vim.keymap.set("n", "<leader>td", "<cmd>Trouble diagnostics toggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble symbols toggle focus=true<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>tcl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>txL", "<cmd>Trouble loclist toggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>txQ", "<cmd>Trouble qflist toggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
