set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'rust-lang/rust.vim'
call plug#end()


set mouse=a
syntax on
set number

set cursorline
:highlight Cursorline cterm=bold ctermbg=yellow

set hlsearch
set incsearch

set tabstop=3


"key binds
map <C-n> :NERDTreeToggle<CR>
