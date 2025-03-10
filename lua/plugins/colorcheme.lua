-- return {
--   {
--     "Mofiqul/vscode.nvim",
--     priority = 1000,
--     config = function()
--       require("vscode").setup({
--         -- theme = "vscode",       -- Pilih tema "vscode" atau "onedark"
--         style = "dark",         -- Pilih "dark" atau "light"
--         transparent = false,    -- Set true jika ingin background transparan
--         italic_comments = true, -- Komentar miring seperti di VSCode
--       })
--       vim.cmd("colorscheme vscode")
--     end,
--   },
-- }

return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,    -- Pastikan tema dimuat saat startup
    priority = 1000, -- Muat sebelum plugin lain
    config = function()
      require("github-theme").setup({
        -- Konfigurasi tambahan bisa ditambahkan di sini
      })

      -- Terapkan colorscheme
      vim.cmd("colorscheme github_dark_dimmed")
    end,
  },
}
-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     lazy = false,    -- Memastikan tema langsung dimuat
--     priority = 1000, -- Pastikan tema dimuat sebelum plugin lain
--     config = function()
--       require("kanagawa").setup({
--         -- Sesuaikan opsi tema di sini
--         compile = false,
--         undercurl = true,
--         commentStyle = { italic = true },
--         functionStyle = { bold = true },
--         keywordStyle = { italic = true },
--         statementStyle = { bold = true },
--         typeStyle = {},
--         transparent = false, -- Ubah ke `true` jika ingin background transparan
--         dimInactive = false,
--         terminalColors = true,
--         theme = "dragon", -- Bisa "wave", "dragon", atau "lotus"
--         background = {
--           dark = "dragon",
--           light = "wave",
--         },
--       })
--
--       -- Terapkan warna
--       vim.cmd.colorscheme("kanagawa")
--     end,
--   },
-- }
