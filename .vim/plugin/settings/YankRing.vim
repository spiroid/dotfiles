""""""""""""""""""""""""""""""
" => YankRing
" """"""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim/tmp/'
endif
