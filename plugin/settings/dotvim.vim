if has("mouse")
    set mouse=a
endif


set tabstop=4
set shiftwidth=4
set expandtab


set wrap "automatically wrap on load
"set fo-=t " don't automatically wrap text when typign

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa


" auto complete
let g:supertabdefaultcompletiontype = "context"
let g:neocomplete#enable_at_startup = 1

set laststatus=2


" restore cursor position
if has("autocmd")
    au bufreadpost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


set hlsearch
set incsearch

" press space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set incsearch

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

"highlight last inserted text
nnoremap gV `[v`]
"nmap <C-CR> i<CR><Esc>

set nostartofline

"toggle gundo
nnoremap <leader>u :GundoToggle<CR>
nnoremap <F5> :GundoToggle<CR>
" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-L> <C-W>l<C-W>
map <C-H> <C-W>h<C-W>

"let g:pyflakes_use_quickfix = 0

map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>


"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"
"set completeopt=menuone,longest,preview
"" faster redrawing
"
"" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

nnoremap Y y$
" make backspace behave in a sane manner
set backspace=indent,eol,start

" Use visual bell instead of beeping when doing something wrong

set cmdheight=1
" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>

"set clipboard=unnamed

set scrolloff=3 " lines of text around cursor
" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

highlight Cursor guifg=black guibg=white

" open nerdtree with leader n
nmap <silent> <leader>n :NERDTreeToggle<CR>

nmap <leader>a <Esc>:Ack!
" shortcut to save
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>

vnoremap <Leader>s :sort<CR>
" disable Ex mode
noremap Q <NOP>

" set paste toggle
set pastetoggle=<F6>

" toggle paste mode
" map <leader>v :set paste!<cr>

map <Leader>vip :call VimuxIpy()<CR>
vmap <silent> <Leader>e :python run_visual_code()<CR>
noremap <silent> <Leader>c :python run_cell(save_position=False, cell_delim='####')<CR>

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

" Textmate style indentation
vmap <leader>[ <gv
vmap <leader>] >gv
nmap <leader>[ <<
nmap <leader>] >>
" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction


"autocmd! bufwritepost .vimrc source %

"let g:syntastic_check_on_open = 1

nnoremap <Leader>rtw :%s/\s\+$//ge<CR>

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
"" ]M            Jump on next class or method (normal, visual, operator modes)
"let g:pymode_rope = 1
"
"" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'
"
""Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
"" Auto check on save
"let g:pymode_lint_write = 1
"
"" Support virtualenv
"let g:pymode_virtualenv = 1
"
"" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>b'
"
"" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"noremap <F8> :PymodeLintAuto<CR>
"" Don't autofold code
"let g:pymode_folding = 0


:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Qa qa
:command QA qa


inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <escc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $inoremap$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>


" Ignore case when searching
set ignorecase
"
" "                           When searching try to be smart about cases
set smartcase
set ai "Apple_Terminaluto indent
set si "Smart indent

" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" :let $NVIM_TUI_ENABLE_TRUE_COLOR=1
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let g:slime_target = "tmux"
let g:slime_python_ipython = 1

let g:tmux_sessionname=''
let g:tmux_windowname='./ipython.sh'
let g:tmux_panenumber='2'
let g:vimux_pyutils_use_tslime=1

nnoremap H 0
nnoremap L $

nnoremap j gj
nnoremap k gk
nnoremap J j
nnoremap K k

