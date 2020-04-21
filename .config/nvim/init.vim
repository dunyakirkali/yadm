set nocompatible
set shell=/usr/local/bin/fish      " Prefer zsh for shell-related tasks

" Enable relative line numbers
set number relativenumber

set clipboard+=unnamed

" tab related {
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab
set smarttab
set cindent
set list
set listchars=tab:>·,trail:·
"}

" encoding related {
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set fileencodings=utf-8,latin1,default
"}

" folding related {
set foldcolumn=0
set foldmethod=indent
set foldnestmax=100
set nofoldenable
set foldlevel=1
"}

" coloring related {
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " True gui colors in terminal
" set background=dark
" set t_Co=256
" set termguicolors
"}

" show syntax {
syntax enable
"}

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Mappings
let mapleader = " "

noremap <leader>t :NERDTreeToggle<CR>
noremap <leader>f :Files<CR>
noremap <leader>s :Ag<CR>
noremap <leader>! :terminal<CR>
noremap <leader>q :q<cr>

nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>
map $ <Nop>
map ^ <Nop>
map { <Nop>
map } <Nop>
noremap K     {
noremap J     }
noremap H     ^
noremap L     $

let NERDTreeMapOpenInTab='\r'
