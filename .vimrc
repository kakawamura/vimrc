set number 
set title
set showmatch
set tabstop=3
set cursorline
set clipboard=unnamed
set smarttab
syntax on

filetype plugin indent on 

"-------------------------------------------
"検索
"-------------------------------------------
set ignorecase
set smartcase
set wrapscan 
set incsearch 

"-------------------------------------------
"表示設定
"-------------------------------------------
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

"-------------------------------------------
" NeoBundle
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

"------------------------------------------- 
" PLUGINS
"-------------------------------------------
NeoBundle 'tpope/vim-surround'

NeoBundle 'rstacruz/sparkup'
NeoBundle 'mattn/emmet-vim' "html5: <c-t> ,
  let g:user_emmet_leader_key = '<c-t>'
NeoBundle 'jiangmiao/simple-javascript-indenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-endwise'

"------------------------------------------- 
" MAPPING 
"-------------------------------------------

