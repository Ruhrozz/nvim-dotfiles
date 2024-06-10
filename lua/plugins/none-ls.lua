local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- Python
		null_ls.builtins.diagnostics.pylint.with({
			diagnostics_postprocess = function(diagnostic)
				diagnostic.code = diagnostic.message_id
			end,
		}),
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.black,

		-- Lua
		null_ls.builtins.formatting.stylua,

		-- Yaml
		null_ls.builtins.formatting.yamlfmt,
		null_ls.builtins.formatting.yamlfix,
		null_ls.builtins.diagnostics.yamllint,

		null_ls.builtins.code_actions.gitsigns,
	},
})

vim.keymap.set("n", "<leader>fa", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", {})
