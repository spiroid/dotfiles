let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

map <F2> :NERDTreeToggle<CR>

" Don't display these kinds of files
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

" Close on quit if NerdTree is the last buffer
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
