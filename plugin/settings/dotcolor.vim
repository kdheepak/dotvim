colorscheme gruvbox

"" Mokolai
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"

"" Solarized -------------------------------------------------------------- {{{
"if exists('g:colors_name') && g:colors_name == 'solarized'
"    " Text is unreadable with background transparency.
"    if has('gui_macvim')
"        set transparency=0
"    endif
"
"    " Highlighted text is unreadable in Terminal.app because it
"    " does not support setting of the cursor foreground color.
"    if !has('gui_running') && $TERM_PROGRAM == 'Apple_Terminal'
"        if &background == 'dark'
"            hi Visual term=reverse cterm=reverse ctermfg=10 ctermbg=7
"        endif
"    endif
"endif

"set colorcolumn=80
highlight ColorColumn ctermbg=233
