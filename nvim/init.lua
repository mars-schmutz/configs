vim.g.mapleader = " "
vim.cmd("syntax on")
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.number = true
vim.o.showcmd = true
vim.o.cursorline = true
vim.cmd("filetype plugin indent on")
vim.o.wildmenu = true
vim.o.lazyredraw = true
vim.o.showmatch = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.foldenable = true
vim.o.foldlevelstart = 10
vim.o.foldnestmax = 10
vim.o.foldmethod = indent
-- disable autocomplete scratch preview window
--vim.opt.completeopt = vim.opt.completeopt - 'preview'

-- make sure to clear screen after exiting

-- disable mouse interaction
vim.opt.mouse = ""

vim.keymap.set("i", "jk", "<esc>")

-- plugin configs
vim.g.coq_settings = {
    auto_start = 'shut-up',
}
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })

-- Old trouble.nvim keybinds?
-- vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
-- vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
-- vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
-- vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
-- vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)

-- Plugin stuff
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
    {import = "plugins"}
})


vim.cmd.colorscheme "catppuccin"
