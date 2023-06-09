-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- use({
    --	"navarasu/onedark.nvim",
    --	as = "onedark",
    --	config = function()
    --		vim.cmd("colorscheme onedark")
    --	end,
    --})

    -- use({ 'rose-pine/neovim', as = 'rose-pine', config = function()
    --	vim.cmd('colorscheme rose-pine')
    -- end
    --})

    -- use({
    --    "folke/tokyonight.nvim",
    --    as = "tokyonigh",

    --    run = function()
    --        vim.cmd("colorscheme tokyonight")
    --    end,
    -- })

    use({ "catppuccin/nvim", as = "catppuccin" })

    use({
        "nvim-treesitter/nvim-treesitter",

        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    })

    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    })

    use({
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup({})
        end,
    })

    use({
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                panel = {
                    enabled = true,
                    auto_refresh = false,
                    keymap = {
                        jump_prev = "[[",
                        jump_next = "]]",
                        accept = "<CR>",
                        refresh = "gr",
                        open = "<M-CR>",
                    },
                    layout = {
                        position = "bottom", -- | top | left | right
                        ratio = 0.4,
                    },
                },
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    debounce = 75,
                    keymap = {
                        accept = "<M-l>",
                        accept_word = false,
                        accept_line = false,
                        next = "<M-]>",
                        prev = "<M-[>",
                        dismiss = "<C-]>",
                    },
                },
                filetypes = {
                    yaml = true,
                    rs = false, -- For learning rust
                    markdown = true,
                    help = false,
                    gitcommit = true,
                    gitrebase = true,
                    hgcommit = false,
                    svn = false,
                    cvs = false,
                    ["."] = false,
                },
            })
        end,
    })

    use("ThePrimeagen/vim-be-good")
    use("eandrju/cellular-automaton.nvim")

    use("jose-elias-alvarez/null-ls.nvim") -- Useful for formatting

    use("christoomey/vim-tmux-navigator")  -- tmux & split window navigation

    -- auto closing
    use("windwp/nvim-autopairs")                                 -- autoclose parens, brackets, quotes, etc...
    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tagsuse("m4xshen/autoclose.nvim")

    use("norcalli/nvim-colorizer.lua")                           -- colorize hex codes, etc...

    -- Lean
    --
    use('Julian/lean.nvim')
    use('neovim/nvim-lspconfig')
    use('nvim-lua/plenary.nvim')

    -- Optional Dependencies:

    use('hrsh7th/nvim-cmp') -- For LSP completion
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/vim-vsnip')      -- For snippets
    use('andrewradev/switch.vim') -- For Lean switch support
    use('tomtom/tcomment_vim')    -- For commenting motions
end)
