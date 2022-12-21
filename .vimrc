" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
" The encoding written to file.
set fileencoding=utf-8  
set nu
set relativenumber

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

syntax enable
set noerrorbells

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Always show current position
set ruler

" Scroll before 8 lines
set scrolloff=10

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" Set paste mode when <F3> is pressed
set pastetoggle=<F3>

" Add extra column for showing erros and stuff
set signcolumn=yes

" Set right side columns
set colorcolumn=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Unified clipboard for vim and system
set clipboard=unnamedplus

" Show us the command we're typing
set showcmd

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Always show the status line
set laststatus=2
set statusline+=%f
set statusline+=%n

" Plugins using plugged
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
" For NERDTree mouse use
set mouse=a
let g:NERDTreeMouseMode=3
