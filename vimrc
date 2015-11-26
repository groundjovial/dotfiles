"Vim Configuration

set nocompatible
scriptencoding=utf-8
set termencoding=utf-8
set encoding=utf-8
let mapleader=","
filetype off

if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/Vundle.vim
  let vimDir='~/vimfiles/bundle/'
else
  set rtp+=~/.vim/bundle/Vundle.vim
  let vimDir='~/.vim/bundle/'
endif
call vundle#begin(vimDir)

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
if has('unix')
  Plugin 'Valloric/YouCompleteMe'
endif

"Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tomasr/molokai'
"Plugin 'scrooloose/syntastic'

call vundle#end()
filetype indent plugin on

"""""""""""""""""
" Plugin Settings

let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled=1

"map <F10> :NERDTreeToggle<CR>
"map <F9> :NERDTreeFind<CR>

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_after_insertion=1

"""""""""""""""""
" Vim settings

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set listchars=tab:\▸\ ,eol:¬,trail:~,extends:>,precedes:<
" <ctrl-v>u25b8 <ctrl-v>u00ac

"colorscheme elflord
colorscheme Tomorrow-Night-Eighties
set background=dark

let &colorcolumn=join(range(81,999),",")

if has('win32')
  " set clipboard-unnamed
  set noerrorbells visualbell t_vb=
  augroup THEBELLS_GROUP
    autocmd!
    autocmd GUIEnter * set visualbell t_vb=
  augroup end
endif

if has('gui_running')
  if has('win32')
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
  else
    set guifont=Liberation\ Mono\ for\ Powerline\ 12
  endif
else
  set t_Co=256
endif

syntax on
set hidden

set number
set laststatus=2

set nohlsearch
set incsearch
set autoindent

set backspace=2
set nobackup
set nowritebackup
set history=50

set ruler
set showcmd

" Open new split panes to right and bottom
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Insert blank line above / below
nnoremap <Enter> :call append(line('.'), '')<CR>
nnoremap <S-Enter> :call append(line('.')-1, '')<CR>

" Move line up / down
no <C-down> ddp
no <C-up> ddkP

" Move line up / down
vmap <C-down> xp`[V`]
vmap <C-up> xkP`[V`]

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

nmap <leader>l :set list!<CR>
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>y :edit ~/.ycm_extra_conf.py

augroup VIMRC_GROUP
  autocmd!
  autocmd bufwritepost .vimrc source $MYVIMRC | AirlineRefresh
augroup end



