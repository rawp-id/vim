return {
  { "neoclide/coc.nvim", branch = "release" }, -- Pastikan coc.nvim sudah terinstall
  { "github/copilot.vim" }, -- Pastikan copilot.vim juga terinstall
  -- {
  --   "hexuhua/coc-copilot",
  --   config = function()
  --     -- Konfigurasi untuk coc-copilot
  --     vim.cmd([[
  --       let g:coc_global_extensions = ['@hexuhua/coc-copilot']
  --       let g:coc_user_config = {
  --         \ 'copilot.enable': v:true,
  --         \ 'copilot.timeout': 5000,
  --         \ 'copilot.priority': 1000,
  --         \ 'copilot.limit': 10,
  --         \ 'copilot.enablePreselect': v:true,
  --         \ 'copilot.kindLabel': " ",
  --         \ 'copilot.shortcut': "Cop",
  --         \ 'copilot.showRemainingText': v:true
  --       }
  --     ]])
  --
  --     -- Shortcut untuk memperbarui pelengkapan Copilot secara manual
  --     vim.api.nvim_set_keymap("i", "<C-l>", "coc#refresh()", { expr = true, noremap = true, silent = true })
  --   end,
  -- },
}
