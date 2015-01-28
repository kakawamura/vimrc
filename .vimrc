set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=3 "インデントをスペース４つ分に設定
set cursorline "カーソル行の強調表示
set clipboard=unnamed "クリップボードをWindowsと連携する"
set smarttab "新しい行を作った時に高度な自動インデントを行う"

filetype plugin indent on "pluginを使用可能にする

"-------------------------------------------
"検索
"-------------------------------------------

set ignorecase "大文字・小文字の区別なく検索する
set smartcase "検索文字列に追う文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set incsearch "検索文字の強調表示

"-------------------------------------------
"表示設定
"-------------------------------------------
set autoindent
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

