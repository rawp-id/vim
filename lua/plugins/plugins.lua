return {
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true,
        execution_message = { message = "" },
        events = { "InsertLeave", "BufLeave", "FocusLost", "TextChanged" },
        conditions = {
          exists = true,
          filename_is_not = { "lazy.nvim" },
          filetype_is_not = {},
        },
        write_all_buffers = true,
        debounce_delay = 1000, -- 1 detik delay

      })
    end,
  },
  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup( --[[optional config]])
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
  -- {
  --   'akinsho/bufferline.nvim',
  --   dependencies = { 'nvim-tree/nvim-web-devicons' },
  --   config = function()
  --     require("bufferline").setup({
  --       options = {
  --         -- offsets = {
  --         --   {
  --         --     filetype = "snacks",
  --         --     text = "File Explorer",
  --         --     highlight = "Directory",
  --         --     separator = true,
  --         --   },
  --         -- },
  --         diagnostics = "coc", -- Gunakan CoC untuk diagnostics
  --         diagnostics_indicator = function(count, level, diagnostics_dict, context)
  --           local icon = level:match("error") and " " or " "
  --           return " " .. icon .. count
  --         end,
  --         -- separator_style = "slant",
  --         -- show_buffer_close_icons = false,
  --         -- show_close_icon = false,
  --         -- show_tab_indicators = true,
  --         -- always_show_bufferline = true,
  --       },
  --       highlights = {
  --         buffer_selected = {
  --           fg = "#ffffff",
  --           bold = true,
  --         },
  --         diagnostic = {
  --           fg = "#ff0000",
  --           bg = "#1e1e2e",
  --         },
  --         diagnostic_visible = {
  --           fg = "#ff8800",
  --         },
  --       }
  --     })
  --   end
  -- },
}
