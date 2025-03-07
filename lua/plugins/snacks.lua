return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true, -- Menampilkan file tersembunyi di picker
          ignored = false, -- Opsional: Menampilkan file yang di-ignore oleh .gitignore
          follow = true, -- Opsional: Mengikuti symbolic links
        },
        explorer = {
          hidden = true, -- Menampilkan file tersembunyi di explorer
          ignored = false, -- Opsional: Menampilkan file yang di-ignore oleh .gitignore
          follow = true, -- Opsional: Mengikuti symbolic links
        },
      },
    },
  },
}
