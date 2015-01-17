let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

map <F2> :NERDTreeToggle<CR>
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<cr>
map <leader>nf :NERDTreeFind<cr>

" Don't display these kinds of files
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
