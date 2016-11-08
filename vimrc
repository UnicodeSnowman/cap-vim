" capVim - .vimrc

" PLUGIN LOADING
call pathogen#infect()

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

" CTAGS
set tags=./tags,tags

" FONT, TEXT, COLORS
set guifont=Source\ Code\ Pro\ Light:h14
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

" WHITESPACE
set list                                                    " display whitespace characters
set listchars=tab:>~,nbsp:_,trail:.                         " set whitespace character representation

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

" BRACKETS, QUOTES, MATCHED CHARACTERS
" TODO is there a plugin that does a better job of this for me?
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

" BUFFER NAVIGATION
noremap <silent> [b :bprevious <CR>
noremap <silent> ]b :bnext <CR>

" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" SYNTASTIC
let g:syntastic_javascript_checkers = ['eslint']

" MAPPINGS
map <leader>e :Explore<CR>:set number<CR>
nmap <leader>T :echo "you're editing" bufname("%") "how 'bout dat?"<CR>

" reverse some text
vnoremap ;rv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

" jump to the next section when editing in insert mode
imap <C-j> <Esc>:exec <Esc>wa

" jump to the end of the line when editing in insert mode
imap <C-l> <Esc>:exec <Esc>A

" open ag.vim
nnoremap <leader>a :Ag 

" COMMANDS
:command Snowman :normal i<C-v>u2603
:command Tableflip :!echo "(╯°□°)╯︵ ┻━┻" | pbcopy
:command Tableback :!echo "┬┬ ノ( ゜-゜ノ)" | pbcopy

" LANGUAGE SPECIFIC FEATURES AND COMMANDS
"
" RACER (RUST)
set hidden "Also it's worth turning on 'hidden' mode for buffers otherwise you need to save the current buffer every time you do a goto-definition"
let g:racer_cmd="/Users/christopher/.vim/bundle/rust-racer.vim/target/release/racer"
"let g:racer_experimental_completer = 1
let $RUST_SRC_PATH="/Users/christopher/Development/rust/src/rustc-nightly/src/"

" DIRECTORY-SPECIFIC VIMRC OVERRIDE
if filereadable(".vimrc.local")
  so .vimrc.local
endif

" props to http://dougblack.io/words/a-good-vimrc.html for some great tips here
