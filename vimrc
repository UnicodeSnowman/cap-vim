" capVim - .vimrc

" PLUGIN LOADING
call plug#begin('~/.vim/plugged')

Plug 'AndrewRadev/splitjoin.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'cohama/lexima.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'garbas/vim-snipmate'
Plug 'guns/vim-clojure-static'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'nono/vim-handlebars'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'trevordmiller/nova-vim'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/indenthtml.vim'
Plug 'w0ng/vim-hybrid'

call plug#end()

" MOUSE SETTINGS
set mouse=a

" MISCELLANEOUS
set nocompatible
syntax on
filetype plugin indent on                                   " load filetype specific files
set lazyredraw                                              " redraw only when necessary
autocmd BufNewFile,BufRead *.json set ft=javascript         " highlight json as javascript
set clipboard=unnamed                                       " clipboard : https://coderwall.com/p/j9wnfw/vim-tmux-system-clipboard
set number                                                  " show line numbers
runtime! macros/matchit.vim                                 " enable better delimiter matching

" CTAGS
set tags=./tags,tags

" FONT, TEXT, COLORS
colorscheme nova                                            " color and syntax highlighting
" set highlight LineNr guifg=#050505                        " highlight line numbers

" HIGHLIGHTING
set cursorline                                              " highlight current line
set showmatch                                               " highlight matching opening/closing characters

" SPACES AND TABS
set nowrap                                                  " don't wrap lines
set tabstop=2                                               " tab = 2 spaces
set shiftwidth=2
set expandtab                                               " use spaces, not tabs
set backspace=indent,eol,start                              " backspace through everything in insert mode

" FOLDING
set foldcolumn=1                                            " the number of columns to use for folding display at the left

" js indent within html templates
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" SEARCHING
set hlsearch                                                " highlight matches
set incsearch                                               " search as characters are entered
set ignorecase                                              " ignore case when searching
set smartcase                                               " case-sensitive if capital letters are included

" BUFFER NAVIGATION
noremap <silent> [b :bprevious <CR>
noremap <silent> ]b :bnext <CR>

" ctrlP
set runtimepath^=~/.vim/plugged/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" SYNTASTIC
let g:syntastic_javascript_checkers = ['eslint']

" MAPPINGS
map <leader>e :Explore<CR>:set number<CR>

" reverse some text
vnoremap ;rv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

" jump to the next section when editing in insert mode
imap <C-j> <Esc>:exec <Esc>wa

" jump to the end of the line when editing in insert mode
imap <C-l> <Esc>:exec <Esc>A

" open ag.vim
nnoremap <leader>a :Ag 

" COMMANDS
:command! Snowman :normal i<C-v>u2603
:command! Tableflip :!echo "(╯°□°)╯︵ ┻━┻" | pbcopy
:command! Tableback :!echo "┬┬ ノ( ゜-゜ノ)" | pbcopy

" LANGUAGE SPECIFIC FEATURES AND COMMANDS
"

" DIRECTORY-SPECIFIC VIMRC OVERRIDE
if filereadable(".vimrc.local")
  so .vimrc.local
endif

" props to http://dougblack.io/words/a-good-vimrc.html for some great tips here
