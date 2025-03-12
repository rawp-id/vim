return {
  {
    "tpope/vim-commentary",
    -- enabled = false,
    lazy = false,
    config = function()
      -- Hapus keymaps bawaan LazyVim
      -- vim.keymap.del("n", "gcc")
      -- vim.keymap.del("v", "gc")
      vim.keymap.del("n", "gcu")


      require("config.comment")

      -- Paksa format komentar PHP menggunakan //
      -- vim.api.nvim_create_autocmd("FileType", {
      --   pattern = "php",
      --   callback = function()
      --     vim.bo.commentstring = "// %s"
      --   end,
      -- })
      -- Keymaps untuk komentar
      vim.keymap.set("n", "gcc", "<cmd>Commentary<CR>", { desc = "Toggle Comment line" })
      vim.keymap.set("v", "gc", "gv<cmd>Commentary<CR>", { desc = "Toggle Comment selection" })
      vim.keymap.set("n", "gco", "<cmd>Commentary<CR>o", { desc = "Add Comment Below" })
      vim.keymap.set("n", "gcO", "<cmd>Commentary<CR>O", { desc = "Add Comment Above" })
    end,
  }
}
