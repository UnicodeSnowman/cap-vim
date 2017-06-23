" WHITESPACE
set list                                                    " display whitespace characters
set listchars=tab:>~,nbsp:_,trail:.                         " set whitespace character representation

" run spec on current line
nnoremap <leader>t :exec "!zeus test " . @% . ":" . line(".")<CR>
