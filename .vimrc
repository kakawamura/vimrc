set number 
set title
set showmatch
set tabstop=3
set cursorline
set clipboard=unnamed
set smarttab
syntax on
colorscheme elflord

filetype plugin indent on 

set ignorecase
set smartcase
set wrapscan 
set incsearch 

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
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on     " Required!

if neobundle#exists_not_installed_bundles()
   echomsg 'Not installed bundles : ' . \ string(neobundle#get_not_installed_bundle_names())
   echomsg 'Please execute ":NeoBundleInstall" command.'
endif

NeoBundle 'tpope/vim-surround'

NeoBundle 'rstacruz/sparkup'
NeoBundle 'mattn/emmet-vim' "html5: <c-t> ,
  let g:user_emmet_leader_key = '<c-t>'
NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'wincent/Command-T'

"------------------------------------------- 
" MAPPING 
"-------------------------------------------
nnoremap ; :
