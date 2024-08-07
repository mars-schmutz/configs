return {
    -- mason.nvim
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                -- your mason.nvim configuration here
            })
        end
    },
    
    -- mason-lspconfig.nvim
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                -- your mason-lspconfig configuration here
            })
        end
    },

    -- nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            local lspconfig = require("lspconfig")

            -- Example LSP servers setup
            local servers = { "ruff_lsp", "rust_analyzer" }

            for _, server in ipairs(servers) do
                lspconfig[server].setup {}
            end
        end
    }
}

