if &compatible
  set nocompatible
endif

" Required:
set runtimepath^=~/.vim//repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-rails')

" git
call dein#add('tpope/vim-fugitive')

call dein#add('rstacruz/sparkup')
call dein#add('jiangmiao/simple-javascript-indenter')
call dein#add('2072/PHP-Indenting-for-VIm')
call dein#add('othree/html5.vim')
call dein#add('othree/html5-syntax.vim')
call dein#add('hynek/vim-python-pep8-indent')
call dein#add('slim-template/vim-slim')
call dein#add('kchmck/vim-coffee-script')

call dein#add('Shougo/unite.vim')
" To search most recent file using unite
call dein#add('Shougo/neomru.vim')
" To use fuzzy finder vimproc is recomended
call dein#add('Shougo/vimproc.vim')

" Fuzzy Finder
call dein#add('kien/ctrlp.vim')

" Code completion
call dein#add('Shougo/neocomplete.vim')

" File explorer
call dein#add('Shougo/vimfiler.vim')

" Pathogon for vim volor
call dein#add('tpope/vim-pathogen')

" JSX syntax highlighting
call dein#add('mxw/vim-jsx')

call dein#add('fatih/vim-go')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
