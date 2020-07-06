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
Plug 'wakatime/vim-wakatime'
Plug 'editorconfig/editorconfig-vim'
Plug 'uarun/vim-protobuf'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-sleuth'

call plug#end()

" No backwards compatibility BS
set nocompatible

" Prefer fish for shell-related tasks
set shell=/usr/local/bin/fish

" Enable relative line numbers
set number relativenumber

set clipboard+=unnamed

" color {
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
"}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

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
nmap <leader>gf :Goyo<CR>

nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" NARDTree
let NERDTreeMapOpenInTab='\r'
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=0
let g:nerdtree_tabs_open_on_gui_startup=0

colorscheme gruvbox

" lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
\ }

" Pane magic
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>
