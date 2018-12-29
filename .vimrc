" General settings

set number
syntax on
filetype on
filetype plugin indent on
set encoding=utf-8
set fileencoding=utf-8
filetype plugin on
set nocompatible
set textwidth=80

" Pathogen 

execute pathogen#infect()
execute pathogen#helptags()

" indentline 
set list lcs=tab:\|\ 
" gitgutter 

let g:gitgutter_map_keys = 0 

" airline

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='monochrome'
"let g:airline_theme='wal'
