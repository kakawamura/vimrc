let mapleader=","
noremap \ ,

noremap <Leader>w :w<CR>
noremap <Leader>q :wq<CR>

" バッファ移動系
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>
nnoremap <Leader>b :bdelete<CR>

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

" ------------------
"  Unite
" ------------------

" Fuzzy Finder
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" Use ag(The Silver Searcher) for Unite grep
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" Buffers, current directory files, files in subdirectories(all)
noremap <C-l> :Unite -start-insert buffer file file_rec/async:!<CR>

" show buffer
noremap <C-p> :Unite buffer<CR>

" Most Recently Used Files
noremap <C-z> :Unite file_mru<CR>

" Unite Grep
nnoremap <C-g> :Unite grep:. -no-split -buffer-name=search-buffer<CR>

" Create new file
nnoremap <C-n> :Unite file/new<CR>

" ------------------
"  Fugitive
" ------------------

nnoremap <Leader>g :Ggrep 
