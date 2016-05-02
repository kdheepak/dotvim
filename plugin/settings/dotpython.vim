let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225'

au filetype python set omnifunc=pythoncomplete#complete

set list listchars=tab:>-,extends:»,precedes:«

au filetype py set autoindent
au filetype py set textwidth=79 " pep-8 friendly

autocmd BufRead *.py inoremap # X<c-h>#
