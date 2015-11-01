syntax on
colorscheme molokai
filetype plugin indent on 
set t_Co=256
set relativenumber
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent 
set smartindent 
set mouse= " enable mouse
set nrformats= "treat all numerals as decimal

autocmd BufNewFile,BufRead,BufReadPre *.slim set filetype=slim
autocmd BufNewFile,BufRead,BufReadPre *.coffee set filetype=coffee
