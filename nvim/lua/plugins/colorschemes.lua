return {
    {
        "catppuccin/nvim",
        name = "catppuccin", 
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha"
            })
        end,
    },
    {
        "mellow-theme/mellow.nvim",
        name = "mellow",
    }
}
