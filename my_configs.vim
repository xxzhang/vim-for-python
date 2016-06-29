set nu
set cursorline
set fileformats=unix,dos
set foldmethod=indent
set foldlevel=99

""""""""""""""""""""""""""""""
" => Set line length reminder
""""""""""""""""""""""""""""""
highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
match OverLength /\%80v.\%81v/

""""""""""""""""""""""""""""""
" => Set line length reminder
""""""""""""""""""""""""""""""
set tags=tags;
set autochdir

""""""""""""""""""""""""""""""
" => Set global clipboard
""""""""""""""""""""""""""""""
vmap ;y :w !pbcopy<CR><CR>
nmap ;p :r !pbpaste<CR><CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
