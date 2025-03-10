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
  },
}
