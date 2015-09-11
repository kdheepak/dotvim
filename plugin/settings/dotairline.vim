

" enable vim-airline
let g:airline#extensions#tabline#enabled = 1
""""""""""""""""""""""""""""""
" airline
" """"""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1
let g:airline_theme             = 'powerlineish'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'"" unicode symbols
""""""""""""""""""""""""""""""""""""""""""""
"let g:powerline_symbols = "fancy"
