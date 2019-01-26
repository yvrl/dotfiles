" General settings
	set number
	syntax on
	filetype on
	filetype plugin on
	filetype plugin indent on
	set encoding=utf-8
	set fileencoding=utf-8
	set nocompatible
"	set textwidth=80
	set ignorecase
"	set smartcase
	set lazyredraw
	set undolevels=50
" Copy to system clipboard
	vnoremap <C-c> "+y
	map <C-p> "+P


" Disable automatic commenting on a newline
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

	
" nerdtree
	map <C-n> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-clang-format 
"let g:clang_format#code_style='llvm'
autocmd FileType c,cpp,objc nnoremap <buffer> <F3> :ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer> <F4> :ClangFormat<CR>

" ale
"let b:ale_linters = ['clangtidy', 'cppcheck']
"let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let b:ale_cpp_clangtidy_checks = ['cppcoreguidelines', 'clang-analyzer', 'performance', 'bugprone', 'llvm']
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" disabled all automatic checking
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_filetype_changed = 0
nmap <silent> <F5> :ALELint<CR>

let $NVIM_TUI_ENABLE_TRUE_COLOR=1 

" set true colors
" set termguicolors 
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" 
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

