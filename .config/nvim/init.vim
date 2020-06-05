" Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kana/vim-textobj-user'
Plug 'andyl/vim-textobj-elixir'
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
Plug 'slashmili/alchemist.vim'
Plug 'dag/vim-fish'
Plug 'tpope/vim-fugitive'

call plug#end()

" No backwards compatibility BS
set nocompatible

" Prefer fish for shell-related tasks
set shell=/usr/local/bin/fish

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
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
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

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

let NERDTreeMapOpenInTab='\r'
let NERDTreeShowHidden=1

colorscheme gruvbox

" lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
\ }
