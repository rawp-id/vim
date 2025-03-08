return {
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      require("vscode").setup({
        style = "dark", -- Pilih "dark" atau "light"
        transparent = false, -- Set true jika ingin background transparan
        italic_comments = true, -- Komentar miring seperti di VSCode
      })
      vim.cmd("colorscheme vscode")
    end,
  },
}
