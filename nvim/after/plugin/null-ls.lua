local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
	formatting.black,
	-- formatting.stylua,
	-- formatting.ocamlformat,
	-- formatting.clang_format,
	formatting.beautysh,

	formatting.markdownlint,
	formatting.prettierd,
	formatting.shfmt,

	diagnostics.markdownlint,
	diagnostics.cppcheck,
}

null_ls.setup({
	sources = sources,
})
