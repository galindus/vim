call plug#begin()
Plug 'preservim/NERDTree'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" Genral setup
set encoding=utf-8
set wildmenu
set number

" NERDTree Setup
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Setup autocomplete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>gd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Python higlight
let python_highlight_all=1
syntax on

" ColorSchemes
colorscheme zenburn
call togglebg#map("<F5>")
