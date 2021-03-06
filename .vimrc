set number
" Enable syntax highlighting
syntax enable 
set pastetoggle=<F3>
set ruler
"For search count
set shortmess-=S

" Enable filetype plugins
filetype plugin on
filetype indent on

" Turn on the Wild menu
set wildmenu

" Height of the command bar
set cmdheight=1

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
set foldcolumn=1

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
     set t_Co=256
endif
   try
      colorscheme desert
   catch
   endtry

set background=dark
 
"1 tab == 4 spaces
 set shiftwidth=4
 set tabstop=4

 set ai "Auto indent
 set si "Smart indent
 set wrap "Wrap lines

set cursorline
set encoding=utf-8 
set showcmd      		" display incomplete commands 



