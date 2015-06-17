" vimrc by Tobias Schmitt (github.com/brainvoid)

set encoding=utf-8

set nocompatible

" Usersettings in Vim

set shell=/bin/bash
filetype plugin indent on
syntax on
set number
set laststatus=2
filetype indent on
set nohlsearch
set incsearch
set ignorecase
set ruler
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set wrap
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" folding stuff
set foldmethod=indent
set foldnestmax=2
nnoremap <space> zA
vnoremap <space> zA

" Movement
" =========
" bind Ctrl+<movement> keys to move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Custom mappings
" ================
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Highlights
" ================
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Plugin space

" Pathogen Plugin
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl 'www.vim.org/scripts/download_script.php?src_id=16224' >> ~/.vim/autoload/pathogen.vim
execute pathogen#infect()
" Ctrlp.vim
" git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

if has("unix")
    let s:uname = substitute(system("uname"), '\n', '', '')
    if s:uname == "Darwin"
        source ~/.dotfiles/vimmacrc
        " do mac stuff here
    elseif s:uname == "linux"
        source ~/.dotfiles/vimlinrc
        " do linux stuff here
    endif
endif
