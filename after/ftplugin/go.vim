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
