
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
