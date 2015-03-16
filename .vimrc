syntax on
colorscheme elflord
set number 
filetype plugin indent on 

set title
set showmatch
set tabstop=3
set cursorline
set clipboard=unnamed
set smarttab
set ignorecase
set smartcase
set hls
set wrapscan 
set expandtab 
set tabstop=2 
set shiftwidth=2
set softtabstop=2 
set autoindent 
set smartindent 
set mouse=a " enable mouse

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

"------------------------------------------- 
" MAPPING 
"-------------------------------------------
let mapleader=","
noremap <Leader>w :w<CR>
noremap <Leader>q :wq<CR>
