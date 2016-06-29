"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
call pathogen#infect('~/.vim_runtime/sources_forked/{}')
call pathogen#infect('~/.vim_runtime/sources_non_forked/{}')
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0
"let g:bufExplorerShowRelativePath=1
"let g:bufExplorerFindActive=1
"let g:bufExplorerSortBy='name'
"map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
"if has("win16") || has("win32")
"    " Don't do anything
"else
"    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
"endif


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
"let g:ctrlp_working_path_mode = 0
"
"let g:ctrlp_map = '<c-f>'
"map <leader>j :CtrlP<cr>
"map <c-b> :CtrlPBuffer<cr>
"
"let g:ctrlp_max_height = 20
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
"ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
"snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>tl : TlistToggle<CR>
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
"let Tlist_Sort_Type="name"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => pydiction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:pydiction_location = '/home/linaro/.vim_runtime/sources_forked/after/complete-dict'
"let g:pydiction_menu_height = 10

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="luna"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pyflakes']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe (Auto complete)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :YcmDiags<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"if has("cscope")
"    set csprg=/usr/local/bin/cscope
"    set csto=1
"    set cst
"    set nocsverb
"    if filereadable("cscope.out")
"        cs add cscope.out
"    endif
"    set csverb
"endif
"
"nmap <leader><leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader><leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <leader><leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader><leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader><leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader><leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader><leader>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
"nmap <leader><leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

