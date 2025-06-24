-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.opt.whichwrap:remove("<leader>x")

vim.opt.whichwrap:append("<,>,[,],h,l")

vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>cf", "<cmd>call CocActionAsync('format')<CR>", { desc = "Format" })
vim.keymap.set("n", "gw", "<cmd>call CocActionAsync('format')<CR>", { desc = "Format" })

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>:call CocActionAsync('format')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-s>", ":w<CR>:call CocActionAsync('format')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>:call CocActionAsync('format')<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "<A-u>", "<C-o>u", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<C-o>u", { noremap = true, silent = true })
vim.keymap.set("n", "<C-z>", "u", { noremap = true, silent = true })
vim.keymap.set("v", "<C-z>", "u", { noremap = true, silent = true })
vim.keymap.set("i", "<C-r>", "<C-o><C-r>", { noremap = true, silent = true })

vim.keymap.set("i", "<C-q>", "<Esc>", { noremap = true, silent = true })

-- vim.keymap.set("n", "dd", '"_dd', { noremap = true, silent = true })
-- vim.keymap.set("n", "d", '"_d', { noremap = true, silent = true })
-- vim.keymap.set("n", "D", '"_D', { noremap = true, silent = true })
vim.keymap.set("n", "x", '"_x', { noremap = true, silent = true })
