
setlocal shiftwidth=2
setlocal tabstop=2

" run spec on current line
nnoremap <leader>t :exec "!zeus test " . @% . ":" . line(".")<CR>
