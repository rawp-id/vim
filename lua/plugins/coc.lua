return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    build = "yarn install --frozen-lockfile",
    config = function()
      vim.cmd([[
        " Gunakan Ctrl+Space untuk membuka suggestion
        inoremap <silent><expr> <C-Space> coc#refresh()

        " Gunakan Tab untuk memilih item di menu, jika tidak ada popup, tetap jadi Tab biasa
        inoremap <silent><expr> <Tab>
          \ pumvisible() ? coc#_select_confirm() :
          \ CheckBackspace() ? "\<Tab>" :
          \ coc#refresh()

        " Gunakan Shift+Tab untuk mundur ke item sebelumnya di popup
        inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"

        " Gunakan Enter untuk memilih item di autocomplete
        inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

        " Fungsi untuk mengecek apakah kursor ada di awal baris atau setelah spasi
        function! CheckBackspace() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        " Format kode dengan Space + c + f seperti LazyVim
        nnoremap <silent> <leader>cf :call CocActionAsync('format')<CR>

        " Format kode dengan Shift + Alt + F seperti VSCode
        nnoremap <silent> <S-A-F> :call CocActionAsync('format')<CR>

        inoremap <silent> <S-A-F> <Esc>:call CocActionAsync('format')<CR>

        nnoremap <silent> <C-F> :call CocActionAsync('format')<CR>

        inoremap <silent> <C-F> <Esc>:call CocActionAsync('format')<CR>

      ]])
    end,
  },
}
