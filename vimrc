""""""""""""""""""""""""""""""
" Vim Configuration file
" Author: Cyril Deguet
""""""""""""""""""""""""""""""

" Load plugins
execute pathogen#infect()

" Basic settings
filetype plugin indent on
syntax on
set nocompatible " Don't behave like vi
set backspace=2 " Make backspace work like most other apps
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set showmode
set showcmd

" Reload vimrc automatically
augroup myvimrc
  au!
  au BufWritePost .vimrc,vimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Remap Escape to jk for efficiency
inoremap jk <ESC>
" Change leader from \ to Space
let mapleader = "\<Space>"

" Disable arrows
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Shortcuts
noremap <Leader>b :buffers<CR>:buffer<Space>
noremap <Leader>s :update<CR>
noremap <leader>p :set invpaste<CR>
noremap <Leader>t :NERDTree<CR>
noremap <Leader>l :ls<CR>
noremap <Leader>q :q<CR>

" Window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Highlight comments in a more readable blue
hi Comment ctermfg=lightblue 

" Status Line
set ruler
set laststatus=2
set statusline=%2*[%02n]%*\ %f\ %3*%(%m%)%4*%(%r%)%*%=%b\ 0x%B\ \ <%l,%c%V>\ %P

" Switch easily between buffers
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR>

