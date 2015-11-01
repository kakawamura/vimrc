source ~/vimrc/config/general.vim

" new setup from the book
set wildmenu wildmode=list:full

" use complete
let g:neocomplete#enable_at_startup = 1

"-------------------------------------------
" NeoBundle plugins
"-------------------------------------------

if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'


filetype plugin indent on

NeoBundleCheck

NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'rstacruz/sparkup'
NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle '2072/PHP-Indenting-for-VIm'
NeoBundle 'othree/html5.vim'
NeoBundle 'othree/html5-syntax.vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'kchmck/vim-coffee-script'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'

NeoBundle 'Shougo/neocomplete.vim'

call neobundle#end()

"------------------------------------------- 
" MAPPING 
"-------------------------------------------
let mapleader=","
noremap \ ,

noremap <Leader>w :w<CR>
noremap <Leader>q :wq<CR>

" バッファ移動系
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

" スプリットウインドウ系
nnoremap <silent> ss :split<CR>
nnoremap <silent> sv :vsplit<CR>
nnoremap <silent> sh <C-w>h<CR>
nnoremap <silent> sj <C-w>j<CR>
nnoremap <silent> sk <C-w>k<CR>
nnoremap <silent> sl <C-w>l<CR>

" タブページ系
nnoremap <silent> st :tabnew<CR>
nnoremap <silent> s<Right> gt<CR>
nnoremap <silent> s<Left> gT<CR>

nnoremap <silent> Y y$

" unite
nnoremap <C-l> :Unite file file_rec buffer<CR>
noremap <C-p> :Unite buffer<CR>
noremap <C-n> :Unite -buffer-name=file file<CR>
noremap <C-z> :Unite file_mru<CR>
