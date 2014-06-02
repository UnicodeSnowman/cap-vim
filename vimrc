" capVim - .vimrc

set nocp
set nocompatible
call pathogen#infect()

syntax on
filetype plugin indent on

" meeses
set mouse=a

" color and syntax highlighting
colorscheme hybrid

" line numbers
" set highlight LineNr guifg=#050505

" snipmate 
"let g:snipMate = {}
"let g:snipMate.scope_aliases = {}
"let g.snipMate.scope_aliases['javascript'] = 'javascript,angular'

" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" disable syntastic html for now becuase it's annoying
let g:syntastic_mode_map={ 'mode' : 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }

" nerdtree
"map <leader>n :execute 'NERDTreeToggle'<CR>
map <leader>e :Explore<CR>

" ctags
set tags=./tags,tags

" font and text
set guifont=Source\ Code\ Pro\ Light:h14

set nowrap					              " don't wrap lines
set tabstop=4				              " tab = 4 spaces
set shiftwidth=4 
set expandtab				              " use spaces, not tabs
set number                                " show line numbers 
set backspace=indent,eol,start            " backspace through everything in insert mode

" set whitespace character representation
set listchars=tab:>~,nbsp:_,trail:.
set list

" folding
set foldcolumn=1 " the number of columns to use for folding display at the left

" js indent within html templates
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" show trailing spaces as dots
set listchars+=trail:.            

"
"	searchin' n' shit
"
set hlsearch				              " highlight matches
set ignorecase
set smartcase				              " case-sensitive if capital letters are included
                                          " in the search pattern

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

inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '

inoremap <      <><Left>
inoremap <<CR>  <<CR>><Esc>O
inoremap <<     <
inoremap <>     <>

"imap <C-j> <Esc>:exec "normal f" . leavechar<CR>a
imap <C-j> <Esc>:exec <Esc>wa

" mapping control-space to auto-complete for now at least.
" this actually seems awesome, because using control-space
" doesn't break snipmate navigation to different fields
inoremap <C-space> <C-x><C-o>

"
" buffer navigation
"
noremap <silent> [b :bprevious <CR>
noremap <silent> ]b :bnext <CR>

"
" commands
"
:command Snowman :normal i<C-v>u2603
:command Backtick :normal i`
":command Tableflip :normal i(╯°□°)╯︵ ┻━┻
":command Tableback :normal i┬┬ ノ( ゜-゜ノ)
:command Tableflip :!echo "(╯°□°)╯︵ ┻━┻" | pbcopy
:command Tableback :!echo "┬┬ ノ( ゜-゜ノ)" | pbcopy
