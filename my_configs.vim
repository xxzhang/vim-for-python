set nu
set fileformats=unix,dos

""""""""""""""""""""""""""""""
" => Mask Direction Key
""""""""""""""""""""""""""""""
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

""""""""""""""""""""""""""""""
" => CapsLK -> Ctrl
""""""""""""""""""""""""""""""

set cursorline
set foldmethod=indent

"au BufRead,BufNewFile *.c,*.cpp,*.py 2match Underlined /.\%81v/
au BufRead,BufNewFile *.c,*.cpp,*.py match Error /\%80v.\%81v/
