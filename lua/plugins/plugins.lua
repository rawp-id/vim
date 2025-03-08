return {
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true,
        execution_message = { message = "" },
        events = { "InsertLeave", "BufLeave", "TextChanged" },
        conditions = {
          exists = true,
          filename_is_not = { "lazy.nvim" },
          filetype_is_not = {},
        },
        write_all_buffers = true,
        debounce_delay = 1000, -- 1 detik delay

        -- Sebelum auto-save, matikan format dari CoC
        before_saving = function()
          vim.g.coc_format_on_save = false
        end,

        -- Setelah auto-save selesai, hidupkan kembali format saat save manual
        after_saving = function()
          vim.g.coc_format_on_save = true
        end,
      })
    end,
  },
}
