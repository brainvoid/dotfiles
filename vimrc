" vimrc by Tobias Schmitt (github.com/brainvoid)

set encoding=utf-8

set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
" always autoreload .vimrc when saved
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Usersettings in Vim

set shell=/bin/bash
filetype plugin indent on                         " filetype detection[ON] plugin[ON] indent[ON]
syntax on                                         " enable syntax highlighting (previously syntax on).
set t_Co=256                                      " enable 256-color mode.
colorscheme wombat256mod
set number                                        " show line numbers
set laststatus=2                                  " last window always has a statusline
filetype indent on                                " activates indenting for files
set nohlsearch                                    " Don't continue to highlight searched phrases.
set incsearch                                     " But do highlight as you type your search.
set ignorecase                                    " Make searches case-insensitive.
set ruler                                         " Always show info along bottom.
set autoindent                                    " auto-indent
set tabstop=2                                     " tab spacing
set softtabstop=2                                 " unify
set shiftwidth=2                                  " indent/outdent by 4 columns
set shiftround                                    " always indent/outdent to the nearest tabstop
set expandtab                                     " use spaces instead of tabs
set smarttab                                      " use tabs at the start of a line, spaces elsewhere
set wrap                                          " don't wrap text
set listchars=tab:>-,trail:~,extends:>,precedes:< " add listchars
set list                                          " enable list
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " no autocomments

" folding stuff
set foldmethod=indent
set foldnestmax=2
nnoremap <space> zA
vnoremap <space> zA

" Movement
" =========
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
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

" Clang Complete Settings
" Avoid freezing on offending code
let g:clang_user_options='|| exit 0'
let g:clang_library_path='/usr/lib/libclang.so'
