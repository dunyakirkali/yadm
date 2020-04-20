set nocompatible
set shell=/usr/local/bin/zsh      " Prefer zsh for shell-related tasks

" Enable relative line numbers
set number relativenumber

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
set background=dark
set t_Co=256
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

call plug#end()

" Mappings
let mapleader = " "

noremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd h<CR>
noremap <leader>t :NERDTreeToggle<CR>
noremap <leader>f :Files<CR>
noremap <leader>s :Rg<CR>
noremap <leader>! :terminal<CR>
