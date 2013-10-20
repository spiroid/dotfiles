" """""""""""" "
" REQUIREMENTS "
" """""""""""" "
" mandatory to allow vim specfic behaviour instead of keeping vi compatibility, use Vim improvements
set nocompatible "Must be set on the first line

" Setup Bundle Support (Vundle script : https://github.com/gmarik/vundle)
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'


" """"""" "
" BUNDLES "
" """"""" "
" ------------ "
" Dependencies "
" ------------ "
Bundle 'MarcWeber/vim-addon-mw-utils'
" Utility functions required by other plugins
Bundle 'tomtom/tlib_vim'
" Frontend for perl module App:ack
" Search recursively in directory :Ack [options] {pattern} [{directory}]
Bundle 'mileszs/ack.vim'

" ------- "
" General "
" ------- "
" File explorer for vim
Bundle 'scrooloose/nerdtree'
" Bundle 'jistr/vim-nerdtree-tabs'
" The plugin provides mappings to easily delete, change and add such
" surroundings in pairs
Bundle 'tpope/vim-surround'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Bundle 'kien/ctrlp.vim'
" Enhanced status line
"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'

" Switch between abs and relative numbering depending of the mode
Bundle 'myusuf3/numbers.vim'

" --- "
" Git "
" --- "
" Basic Git operations in vim
Bundle 'tpope/vim-fugitive'
" A gitk clone for vim: to test
Bundle 'gregsexton/gitv'
" Scripts for creating gists
Bundle 'mattn/gist-vim'
" Git gutter
Bundle 'airblade/vim-gitgutter'

" ------ "
" Colors "
" ------ "
Bundle 'altercation/vim-colors-solarized'
Bundle 'jelera/vim-gummybears-colorscheme'
Bundle 'zeis/vim-kolor'

" ----------- "
" Programming "
" ----------- "
" Syntax checking for various languages
Bundle 'scrooloose/syntastic'

" Code snippets
Bundle 'SirVer/ultisnips'

" Calling web apis
Bundle 'mattn/webapi-vim'

" Commenting / uncommenting lines / blocs etc.
Bundle 'scrooloose/nerdcommenter'

" Realign tabs
Bundle 'godlygeek/tabular'

" Displpay tags elements of a source code (classes, variables ...)
if executable('ctags')
  Bundle 'majutsushi/tagbar'
endif


" --- "
" VIM "
" --- "
" A syntax checker / linter for vim files
Bundle 'dbakker/vim-lint'


" ------ "
" Python "
" ------ "
" Virtual env manipulation inside vim
Bundle 'jmcantrell/vim-virtualenv'

" Python completion
" Need to install the python Jedi autocompletion app to work
" see https://github.com/davidhalter/jedi-vim#installation
Bundle 'davidhalter/jedi-vim'


" ---- "
" HTML "
" ---- "
Bundle 'othree/html5.vim'

" Scala
Bundle 'derekwyatt/vim-scala'
Bundle 'derekwyatt/vim-sbt'
Bundle 'gre/play2vim'

" ------ "
" DevOps "
" ------ "
Bundle 't9md/vim-chef'

" ---- "
" Misc "
" ---- "
"Bundle 'tpope/vim-markdown'
" Enhanced markdown support
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'sudar/vim-arduino-snippets'


" """"""" "
" GENERAL "
" """"""" "
" Enable syntax highlighting
syntax on

" set 'encoding' to "utf-8"
set encoding=utf-8
scriptencoding utf-8

set hidden                     " Hide buffers when they are abandoned
set history=1000               " Keep some stuff in the history
set autoread                   " Automatically read a file that has changed on disk

" Better unix / windows compatibility (slashes instead f backslashes, Unix end-of-line format)
set viewoptions=folds,options,cursor,unix,slash

" System default for mappings is now the "," character
let mapleader = ","


" """""""""" "
" Formatting "
" """""""""" "
" Enable plugins and indentation rules loading according to file types
if has("autocmd")
    filetype plugin indent on
endif

set autoindent                 " indent at the same level of the previous line
set nowrap                     " don't wrap long lines
set showmatch                  " show matching brackets/parenthesis
set foldenable                 " auto fold code
set pastetoggle=<F12>          " pastetoggle (sane indentation on pastes)

" Indenting
set shiftwidth=4               " use indents of 2 spaces
set expandtab                  " tabs are spaces, not tabs
set tabstop=4                  " an indentation every 2 columns
set softtabstop=4              " let backspace delete indent

" Remove trailing whitespaces and ^M chars
if has("autocmd")
    autocmd FileType c,cpp,java,scala,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
endif

" Highlight problematic whitespaces
" See http://vim.wikia.com/wiki/Highlight_unwanted_spaces for more info
set list                      " Whitespace characters are made visible
set listchars=tab:>.,trail:.,extends:#,nbsp:.


" """""" "
" Search "
" """""" "
set incsearch                  " find as you type search
set hlsearch                   " highlight search terms
set winminheight=0             " windows can be 0 line high
set ignorecase                 " case insensitive search
set smartcase                  " case sensitive when uc present


" """ "
" GUI "
" """ "
set showmode                   " show mode at bottom of screen
set number                     " show line numbers
set backspace=indent,eol,start " backspace for dummys (insert mode)
set shortmess+=filmnrxoOtT     " Display abbreviated file messages
set visualbell                 " flash the screen instead of sounding a beep
set mouse=a                    " Enable mouse usage (all modes)
set ttyfast                    " Improves smoothness of redrawing when there are multiple windows
set linespace=0                " No extra spaces between rows
set winminheight=0             " windows can be 0 line high

" Jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Cursor
set cursorline                 " highlight current line
set scrolljump=5               " lines to scroll when cursor leaves screen
set scrolloff=3                " minimum lines to keep above and below cursor

" Ruler on steroids
if has('cmdline_info')
  set ruler                    " show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
  set showcmd                  " show partial commands in status line and selected characters/lines in visual mode
endif

" Status line
if has('statusline')
  set laststatus=2
  set statusline=%<%f\                     " Filename
  set statusline+=%w%h%m%r                 " Options
  set statusline+=%{fugitive#statusline()} " Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " Filetype
  set statusline+=\ [%{getcwd()}]          " Current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" Completion
set wildmenu                   " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]  " backspace and cursor keys wrap to


" """"" "
" THEME "
" """"" "
set background=dark            " Assume a dark background
"let g:solarized_termcolors=256 " 256 colors approximation
let g:solarized_termtrans=1    " Transparency fix for solarized color scheme
colorscheme solarized
