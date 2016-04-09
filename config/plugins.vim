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
" To search most recent file using unite
NeoBundle 'Shougo/neomru.vim'
" To use fuzzy finder vimproc is recomended
NeoBundle 'Shougo/vimproc.vim'

" Fuzzy Finder
NeoBundle 'kien/ctrlp.vim'

" Code completion
NeoBundle 'Shougo/neocomplete.vim'

" File explorer
NeoBundle 'Shougo/vimfiler.vim'

" Pathogon for vim volor
NeoBundle 'tpope/vim-pathogen'

" JSX syntax highlighting
NeoBundle 'mxw/vim-jsx'

NeoBundle 'fatih/vim-go'


" Java completion
NeoBundleLazy 'vim-scripts/javacomplete', {
\   'build': {
\       'cygwin': 'javac autoload/Reflection.java',
\       'mac': 'javac autoload/Reflection.java',
\       'unix': 'javac autoload/Reflection.java',
\   },
\}

call neobundle#end()

autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo
