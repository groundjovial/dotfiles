"Vim Configuration

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'

call vundle#end()
filetype indent plugin on

syntax on
set encoding=utf-8

set guifont=Liberation\ Mono\ for\ Powerline\ 12

"set guifont=Inconsolata\ for\ Powerline\ 10
let g:airline_powerline_fonts=1

colorscheme elflord
set laststatus=2
set number

set nohlsearch
set incsearch
set autoindent

set backspace=2
set shiftwidth=4
set softtabstop=4
set expandtab

set nobackup
set nowritebackup
set history=50

set ruler
set showcmd

set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Disable arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Move lines up / down
no <C-down> ddp
no <C-up> ddkP

" Buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Tabs
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>

" go add line below
nmap g<C-O> o<ESC>k

" gO add line above
nmap gO O<ESC>j

" Auto centre
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i



