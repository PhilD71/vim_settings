" A wise friend once said:
" <<Abolish GUI, return to command line>> 
" 
" This is me doing my part
" A lightweight .vimrc by Phil Dumitru 2021 edition


" ---- General Editor Settings ----
set number
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=4
set showmatch
filetype indent on

" ---- Plug Extensions ----
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Language extensions
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

" ---- General Editor Settings pt 2 ----
colo gruvbox

" ---- NERDTree Settings ----
" Start NERDTree when vim is started
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || !exists('s:std_in') | wincmd p | endif

" exit if nerdtree is last window
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Map F2 to toggle NERDTree
noremap <F2> :NERDTreeToggle<CR>

" ---- Airline Settings ----
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#branch#enabled=1

" ---- Git Settings ----
let g:gitgutter_async = 0

" ---- Language extension settings ----
let g:cpp_member_variable_highlight = 1
