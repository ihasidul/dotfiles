execute pathogen#infect()
syntax on
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set number
set ruler 
set cursorline
set encoding=utf-8 
set showcmd      		" display incomplete commands 
set wildmenu     		" Tab autocomplete in command mode 
set splitright   		" Open new splits to the right
set splitbelow   		" Open new splits to the bottom
set hlsearch    	        " Highlight search results
set listchars=extends:→   	" Show arrow if line continues rightwards
set listchars+=precedes:← 	" Show arrow if line continues leftwards
set incsearch                   " Show search results as you type
set showcmd                     " Show size of visual selection
" Showcase comments in italics
highlight Comment cterm=italic gui=italic
 
syntax on 			" Enable syntax highlighting    
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

