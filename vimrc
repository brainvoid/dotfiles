" vimrc by Tobias Schmitt (github.com/brainvoid)

set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
" always autoreload .vimrc when saved
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Usersettings in Vim

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
syntax on                 " enable syntax highlighting (previously syntax on).
set t_Co=256            " enable 256-color mode.
colorscheme molokai
let g:rehash256 = 1
let g:molokai_original = 1
set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
set listchars=tab:>-,trail:~,extends:>,precedes:<
" Plugin space

" Pathogen Plugin
" mkdir -p ~/.vim/autoload ~/.vim/bundle 
" curl 'www.vim.org/scripts/download_script.php?src_id=16224' >> ~/.vim/autoload/pathogen.vim
execute pathogen#infect()
" Ctrlp.vim
" git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
