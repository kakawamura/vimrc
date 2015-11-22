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

let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" Buffers, current directory files, files in subdirectories(all)
" noremap <C-k> :Unite -start-insert buffer file file_rec/async:!<CR>

" show buffer
noremap <C-l> :Unite buffer<CR>

" Most Recently Used Files
noremap <C-z> :Unite file_mru<CR>
noremap <C-n> :Unite file/new<CR>

" Unite Grep
nnoremap <C-g> :Unite grep:. -no-split -buffer-name=search-buffer<CR>

" Create new file
nnoremap <C-n> :Unite file/new<CR>

" ------------------
"  Fugitive
" ------------------

nnoremap <Leader>g :Ggrep 

" Use ag(The Silver Searcher) for Unite grep
let g:unite_source_grep_max_candidates = 200

if executable('ag')
  " Use ag in unite grep source.
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
  \ '-i --vimgrep --hidden --ignore ' .
  \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
elseif executable('pt')
  " Use pt in unite grep source.
  " https://github.com/monochromegane/the_platinum_searcher
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
  " Use ack in unite grep source.
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts =
  \ '-i --no-heading --no-color -k -H'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('jvgrep')
  " For jvgrep.
  let g:unite_source_grep_command = 'jvgrep'
  let g:unite_source_grep_default_opts =
  \ '-i --exclude ''\.(git|svn|hg|bzr)'''
  let g:unite_source_grep_recursive_opt = '-R'
endif
