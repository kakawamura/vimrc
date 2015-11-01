if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundleCheck

NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'

" git
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
