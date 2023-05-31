local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

--TODO: resolve formatters not working

local sources = {
	null_ls.builtins.diagnostics.cppcheck,
	formatting.black,
	formatting.ocamlformat,
	formatting.stylua,
	formatting.clang_format,
	formatting.beautysh,
	formatting.rustfmt,
}

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

null_ls.setup({
	sources = sources,
})
