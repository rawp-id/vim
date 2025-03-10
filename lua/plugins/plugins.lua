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
        write_all_buffers = false,
        debounce_delay = 1000, -- 1 detik delay

      })
    end,
  },
  {
    'utilyre/barbecue.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons' -- Opsional untuk ikon
    },
    config = function()
      require("barbecue").setup({
        create_autocmd = false, -- Hindari error popup
      })
      vim.api.nvim_create_autocmd({
        "WinScrolled", "BufWinEnter", "CursorHold", "InsertLeave"
      }, {
        group = vim.api.nvim_create_augroup("barbecue.updater", {}),
        callback = function()
          require("barbecue.ui").update()
        end,
      })
    end
  },
}
