return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    build = "yarn install --frozen-lockfile",
    config = function()
      vim.cmd([[
        " " Gunakan Ctrl+Space untuk membuka suggestion
        " inoremap <silent><expr> <C-Space> coc#refresh()
        "
        " " Gunakan Tab untuk memilih item di menu, jika tidak ada popup, tetap jadi Tab biasa
        " inoremap <silent><expr> <Tab>
        "   \ pumvisible() ? coc#_select_confirm() :
        "   \ CheckBackspace() ? "\<Tab>" :
        "   \ coc#refresh()
        "
        " " Gunakan Shift+Tab untuk mundur ke item sebelumnya di popup
        " inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
        "
        " " Gunakan Enter untuk memilih item di autocomplete
        " inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
        "
        " " Fungsi untuk mengecek apakah kursor ada di awal baris atau setelah spasi
        " function! CheckBackspace() abort
        "   let col = col('.') - 1
        "   return !col || getline('.')[col - 1]  =~# '\s'
        " endfunction
        "
        " " Format kode dengan Space + c + f seperti LazyVim
        " nnoremap <silent> <leader>cf :call CocActionAsync('format')<CR>
        "
        " Format kode dengan Shift + Alt + F seperti VSCode
        nnoremap <silent> <S-A-F> :call CocActionAsync('format')<CR>

        inoremap <silent><expr> <TAB>
              \ coc#pum#visible() ? coc#pum#next(1) :
              \ CheckBackspace() ? "\<Tab>" :
              \ coc#refresh()
        inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

        " Make <CR> to accept selected completion item or notify coc.nvim to format
        " <C-g>u breaks current undo, please make your own choice
        inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

        function! CheckBackspace() abort
          let col = col('.') - 1
          return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        " Use <c-space> to trigger completion
        if has('nvim')
          inoremap <silent><expr> <c-space> coc#refresh()
        else
          inoremap <silent><expr> <c-@> coc#refresh()
        endif

        function! ShowDocumentation()
          if CocAction('hasProvider', 'hover')
            call CocActionAsync('doHover')
          else
            call feedkeys('K', 'in')
          endif
        endfunction

        " Highlight the symbol and its references when holding the cursor
        autocmd CursorHold * silent call CocActionAsync('highlight')

        "   autocmd!
        "   " Setup formatexpr specified filetype(s)
        "   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
        " augroup end

        " Add `:Format` command to format current buffer
        " command! -nargs=0 Format :call CocActionAsync('format')

        " command! -nargs=0 Format call s:SafeFormat()
        "
        " function! s:SafeFormat()
        "   if CocAction('hasProvider', 'format')
        "     call CocActionAsync('format')
        "   endif
        " endfunction

        " Add `:Fold` command to fold current buffer
        " command! -nargs=? Fold :call     CocAction('fold', <f-args>)

        " Add `:OR` command for organize imports of the current buffer
        " command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

      ]])
    end,
  },
}
