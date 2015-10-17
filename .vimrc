syntax on
colorscheme molokai
set t_Co=256
set number 
filetype plugin indent on 

set title
set showmatch
set cursorline
set clipboard=unnamed
set smarttab
set ignorecase
set smartcase
set hls
set wrapscan 
set expandtab 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent 
set smartindent 
set mouse= " enable mouse
set nrformats= "treat all numerals as decimal

" new setup from the book
set wildmenu wildmode=list:full




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

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

NeoBundle 'tpope/vim-surround'
NeoBundle 'rstacruz/sparkup'
NeoBundle 'mattn/emmet-vim' "html5: <c-t> ,
  let g:user_emmet_leader_key = '<c-t>'
NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle '2072/PHP-Indenting-for-VIm'
NeoBundle 'othree/html5-syntax.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'hynek/vim-python-pep8-indent'

"------------------------------------------- 
" MAPPING 
"-------------------------------------------
let mapleader=","
noremap \ ,

noremap <Leader>w :w<CR>
noremap <Leader>q :wq<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

" turn off IME when going out from insert mode
inoremap <ESC> <ESC>:set iminsert=0<CR>
