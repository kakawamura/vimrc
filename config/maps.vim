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
noremap <C-l> :Unite file file_rec buffer<CR>
noremap <C-p> :Unite buffer<CR>
noremap <C-n> :Unite -buffer-name=file file<CR>
noremap <C-z> :Unite file_mru<CR>
