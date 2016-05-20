" just my personal vimRC 
" author: tsmt (http://www.github.com/tsmt)
set encoding=utf-8
autocmd! bufwritepost .vimrc source %
call pathogen#infect()

" infect this with pathogen
execute pathogen#infect()

" color
set t_Co=256
color deepsea

" turn of unexpected stuff distro could make
set nocompatible

" no swapfiles for god's sake
set noswapfile

" try to indent by filetype
filetype indent plugin on
" enable syntax
syntax on


"show partial commands
set showcmd

" highlight searches
set hlsearch

" insensitive search
set ignorecase
set smartcase

" allow backspace over autoindent
set backspace=indent,eol,start

" set autoindent
set autoindent

set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=F11
set shiftwidth=4
set softtabstop=4
set expandtab


" No bullshit folding magic
" =========================
set foldmethod=syntax
set foldnestmax=2
nnoremap <space> zA
vnoremap <space> zA
au BufRead * normal zR

" Movement
" =========
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

source ~/.dotfiles/vim_local
