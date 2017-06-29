" run spec on current line
nnoremap <leader>t :exec "!zeus test " . @% . ":" . line(".")<CR>

:command! ShowTest :exec ':e ' . 'spec/' . expand('%:r') . '_spec.rb'
