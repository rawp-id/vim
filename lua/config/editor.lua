local wk = require("which-key")

wk.register({
  g = {
    c = {
      name = "Comment", -- Nama grup untuk 'gc'
      c = { "<cmd>Commentary<CR>", "Toggle Comment [✅/❌]" },
      o = { "<cmd>Commentary<CR>o", "Add Comment Below ⬇️" },
      O = { "<cmd>Commentary<CR>O", "Add Comment Above ⬆️" },
    },
  },
}, { prefix = "" })
