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
"}

" color {
set t_Co=256
set background=dark
set termguicolors
"}

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
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
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
Plug 'tpope/vim-sensible'

call plug#end()

" Mappings
let mapleader = " "

noremap <leader>t :NERDTreeToggle<CR>
noremap <leader>f :Files<CR>
noremap <leader>s :Ag<CR>
noremap <leader>q :q<cr>

nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>

let NERDTreeMapOpenInTab='\r'

colorscheme gruvbox

" lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
\ }
