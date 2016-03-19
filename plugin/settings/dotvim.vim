
syntax enable
" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=~/.vim/undodir

set number
set t_Co=256
" set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\

set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly<F37>

if has("mouse")
    set mouse=a
endif


set tabstop=4
set shiftwidth=4
set expandtab


set wrap "automatically wrap on load
"set fo-=t " don't automatically wrap text when typign

set hlsearch
set incsearch

" press space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set cursorline " highlightcurrent line

set showcmd " show command in bottom bar

set wildmenu

set lazyredraw
set foldenable

set foldnestmax=10      " 10 nested fold max

set foldlevelstart=10   " open most folds by default
set foldmethod=indent   " fold based on indent level

"  move vertically by visual line
nnoremap j gj
nnoremap k gk

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>


