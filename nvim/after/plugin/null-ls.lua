local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

--TODO: resolve formatters not working

-- The commented out formatters work directly with lsp-zero, so there is no need to use null-ls for them.

local sources = {
    formatting.black,
    -- formatting.stylua,
    -- formatting.ocamlformat,
    -- formatting.clang_format,
    formatting.beautysh,
    formatting.markdownlint,
}


null_ls.setup({
    sources = sources,
})
