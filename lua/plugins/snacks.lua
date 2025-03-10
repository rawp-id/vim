return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          show_empty = true, -- Menampilkan file kosong di picker
          hidden = true,     -- Menampilkan file tersembunyi di picker
          ignored = true,    -- Opsional: Menampilkan file yang di-ignore oleh .gitignore
          follow = true,     -- Opsional: Mengikuti symbolic links
        },
        explorer = {
          show_empty = true, -- Menampilkan direktori kosong di explorer
          hidden = true,     -- Menampilkan file tersembunyi di explorer
          ignored = true,    -- Opsional: Menampilkan file yang di-ignore oleh .gitignore
          -- dirs = { "." },    -- Opsional: Menampilkan direktori tertentu
          follow = true,     -- Opsional: Mengikuti symbolic links
        },
      },
    },

    lazygit = {
      -- Mengatur agar LazyGit menggunakan warna sesuai dengan colorscheme Neovim yang aktif
      configure = true,

      -- Konfigurasi tambahan untuk lazygit yang akan digabungkan dengan default
      config = {
        os = { editPreset = "nvim-remote" },
        gui = {
          -- Mengatur versi NerdFonts, set ke "" untuk menonaktifkan ikon
          nerdFontsVersion = "3",
        },
      },

      -- Tema untuk lazygit (menggunakan `snacks.lazygit.Config` untuk warna dan tampilan)
      theme_path = vim.fn.stdpath("cache") .. "/lazygit-theme.yml", -- Path untuk tema lazygit
      theme = {
        [241]                      = { fg = "Special" },
        activeBorderColor          = { fg = "MatchParen", bold = true },
        cherryPickedCommitBgColor  = { fg = "Identifier" },
        cherryPickedCommitFgColor  = { fg = "Function" },
        defaultFgColor             = { fg = "Normal" },
        inactiveBorderColor        = { fg = "FloatBorder" },
        optionsTextColor           = { fg = "Function" },
        searchingActiveBorderColor = { fg = "MatchParen", bold = true },
        selectedLineBgColor        = { bg = "Visual" }, -- background colour for selected line
        unstagedChangesColor       = { fg = "DiagnosticError" },
      },

      -- Pengaturan window untuk lazygit
      win = {
        style = "lazygit", -- Menggunakan gaya window default untuk lazygit
      },

      -- Argumen tambahan untuk perintah lazygit
      args = nil, -- Kosongkan jika tidak memerlukan argumen tambahan, atau sesuaikan jika ada
    }
  },
}
