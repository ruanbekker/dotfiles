" disables annoying visual mode when pasting
set mouse-=a
syntax on
filetype on
filetype indent plugin on
set modeline
filetype indent on
filetype plugin indent on
set nocompatible " not compatible with vi
set autoread " detect when a file is changed
set backspace=indent,eol,start
let mapleader = ','
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

set clipboard=unnamed
set ttyfast
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" ui
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros
set magic " Set magic on, for regex
set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" recognize .txt extension as being human-language text
augroup filetype
  autocmd BufNewFile,BufRead *.txt set filetype=human
augroup END

" set indentation to 2 spaces
autocmd FileType lua,nginx,sh set shiftwidth=2 softtabstop=2

" set indentation to 4 spaces
autocmd FileType html,xhtml,css,xml,xslt,python set shiftwidth=4 softtabstop=4

" in makefiles, don't expand tabs to spaces
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" autoindent rules for yaml
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

syntax on
set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
set background=dark
colorscheme delek
" line numbers
" set number 
set autoindent " automatically set indent of new line
set smartindent
set laststatus=2 " show the satus line all the time
