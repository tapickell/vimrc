
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme Monokai-Refined
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set nu!			" show line numbers
set modelines=0		" for security ??
set scrolloff=3
set undofile
set listchars=tab:▸\ ,eol:¬
set pastetoggle=<F12>
set clipboard=unamed

nnoremap ; :
nnoremap ` <esc>
nnoremap <F11> :set list!<CR>

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set autochdir   	" auto change to dir that file is in
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
