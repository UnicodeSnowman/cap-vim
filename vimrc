" capVim - .vimrc

set nocp
call pathogen#infect()

syntax enable
filetype plugin indent on


" nerdtree
map <leader>n :execute 'NERDTreeToggle'<CR>

" font and text
set guifont=Source\ Code\ Pro\ Black:h11

set nowrap					              " don't wrap lines
set tabstop=4				              " tab = 4 spaces
set shiftwidth=4 
set expandtab				              " use spaces, not tabs
set number                        " show line numbers 
set backspace=indent,eol,start    " backspace through everything in insert mode

" show trailing spaces as dots
set listchars+=trail:.            

"
"	searchin' n' shit
"
set hlsearch				              " highlight matches
set ignorecase				            " case-insensitive

"
" brackets and quotes
"
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap ""     ""

inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
inoremap ''     ''

inoremap <      <><Left>
inoremap <<CR>  <<CR>><Esc>O
inoremap <<     >
inoremap <>     <>

"imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a
imap <C-j> <Esc>:exec <Esc>wa

"
" buffer navigation
"
noremap <silent> [b :bprevious <CR>
noremap <silent> ]b :bnext <CR>
