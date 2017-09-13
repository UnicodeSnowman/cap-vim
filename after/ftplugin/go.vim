nmap <Leader>i <Plug>(go-info)
nmap <Leader>b <Plug>(go-build)
nmap <Leader>r <Plug>(go-run)
nmap <Leader>t <Plug>(go-test)

let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

" supposedly slow? turn off if necessary...
let g:go_highlight_operators = 1
let g:go_highlight_types = 1

" enable code folding
let g:go_fmt_experimental = 1
let g:go_fmt_options = "-s"

" fold all code in buffer based on indent
nmap <Leader>f :setlocal foldmethod=indent<CR>

" Focus parent Convey block. Can be repeated with `@:`
:command! FocusConvey :execute "normal! [{^/\.Convey/\<cr>aFocus\<esc>:nohl\<cr>"
:command! UnFocusConvey :execute "normal! :%s/FocusConvey/Convey/g\<cr>"

" Find a method by name
:command! -nargs=1 FindMethod :execute "normal! /func (\\w*\\W*\\w*) " . <f-args> . "\<cr>"
