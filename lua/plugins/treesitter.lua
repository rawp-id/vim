return {
  { "nvim-treesitter/nvim-treesitter", enabled = false },
  { "nvim-treesitter/nvim-treesitter-textobjects", enabled = false },
}

--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     config = function()
--       local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
--
--       -- Menambahkan konfigurasi Treesitter untuk Blade
--       parser_config.blade = {
--         install_info = {
--           url = "https://github.com/EmranMR/tree-sitter-blade",
--           files = { "src/parser.c" },
--           branch = "main",
--         },
--         filetype = "blade",
--       }
--
--       require("nvim-treesitter.configs").setup({
--         ensure_installed = { "blade", "php", "html", "javascript", "css" }, -- Tambahkan sesuai kebutuhan
--         highlight = { enable = true },
--         indent = { enable = true },
--       })
--
--       -- Set filetype untuk Blade agar dikenali sebagai "blade"
--       vim.cmd([[
--         augroup BladeFiletype
--           autocmd!
--           autocmd BufNewFile,BufRead *.blade.php set filetype=blade
--         augroup END
--       ]])
--     end,
--   },
-- }
