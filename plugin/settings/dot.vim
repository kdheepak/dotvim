syntax enable
" " tell it to use an undo file
set undofile
" " set a directory to store the undo history
set undodir=~/.vim/undodir
" 
set number
" set t_Co=256
" " set encoding=utf-8
" set fillchars+=stl:\ ,stlnc:\
" 
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly<F37>

set tabstop=4
set shiftwidth=4
set expandtab
 
 
set wrap "automatically wrap on load
" "set fo-=t " don't automatically wrap text when typign
 
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
 
" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>
" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
 
" " Set 7 lines to the cursor - when moving vertically using j/k
set so=7

nnoremap Y y$
" " make backspace behave in a sane manner
set backspace=indent,eol,start
 
" Remove whitespace
nnoremap <Leader>rtw :%s/\s\+$//ge<CR>
 
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

:map Q <Nop>

" Ignore case when searching
set ignorecase

"                           When searching try to be smart about cases
set smartcase
set ai "Apple_Terminaluto indent
set si "Smart indent


" remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

function WriteCreatingDirs()
    execute ':silent !mkdir -p %:h'
    write
endfunction
command W call WriteCreatingDirs()
