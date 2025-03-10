-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.opt.whichwrap:append("<,>,[,],h,l")

vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>:call CocActionAsync('format')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-s>", ":w<CR>:call CocActionAsync('format')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>:call CocActionAsync('format')<CR>", { noremap = true, silent = true })
