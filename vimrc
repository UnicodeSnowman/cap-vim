" capVim - .vimrc

set nocp
call pathogen#infect()

syntax enable
filetype plugin indent on

" colorscheme
set background=dark
colorscheme solarized

" font and text
set guifont=Source\ Code\ Pro\ Black:h13

set nowrap					" don't wrap lines
set tabstop=2				" tab = 2 spaces
set shiftwidth=2 
set expandtab				" use spaces, not tabs
set number          " show line numbers 

"
"	searchin' n' shit
"
set hlsearch				" highlight matches
set ignorecase				" case-insensitive
