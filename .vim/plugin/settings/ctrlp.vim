let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',f'
nnoremap <silent> ,f :CtrlPMixed<CR>

" Additional mapping for buffer search
"nnoremap <silent> ,b :CloseSingleConque<CR>:CtrlPBuffer<cr>
"nnoremap <silent> <C-b> :CloseSingleConque<CR>:CtrlPBuffer<cr>
