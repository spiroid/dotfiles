
"
"   ██╗   ██╗ ██╗ ███╗   ███╗ ██████╗   ██████╗
"   ██║   ██║ ██║ ████╗ ████║ ██╔══██╗ ██╔════╝
"   ██║   ██║ ██║ ██╔████╔██║ ██████╔╝ ██║
"   ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ██╔══██╗ ██║
" ██╗╚████╔╝  ██║ ██║ ╚═╝ ██║ ██║  ██║ ╚██████╗
" ╚═╝ ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ╚═╝  ╚═╝  ╚═════╝
"
set encoding=utf-8 nobomb
scriptencoding utf-8
" note: set encoding BEFORE scriptencoding


" ----------------------------------------------------------------------------
" REQUIREMENTS
" ----------------------------------------------------------------------------
" mandatory to allow vim specfic behaviour instead of keeping vi compatibility, use Vim improvements
set nocompatible "Must be set on the first line
set shell=sh

" Setup Plug Support (Vundle script : https://github.com/gmarik/vundle)
filetype off                   " required!
call plug#begin('~/.vim/plugged')


" ----------------------------------------------------------------------------
" Plugins
" ----------------------------------------------------------------------------

" ------------------------------------
" Dependencies
" ------------------------------------
" Utility functions required by other plugins
Plug 'tomtom/tlib_vim'


" ------------------------------------
" General
" ------------------------------------
" Local .vimrc files
Plug 'MarcWeber/vim-addon-local-vimrc'

" File explorer for vim
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Buffer explorer / manager
Plug 'jlanzarotta/bufexplorer'
" The plugin provides mappings to easily delete, change and add such
" surroundings in pairs
Plug 'tpope/vim-surround'

" Maintains a history of previous yanks, changes and deletes
" Most recently used files
Plug 'vim-scripts/mru.vim'

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" ------------------------------------
" Display
" ------------------------------------
" Enhanced status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Switch between abs and relative numbering depending of the mode
Plug 'myusuf3/numbers.vim'


" ------------------------------------
" Git
" ------------------------------------
" Basic Git operations in vim
Plug 'tpope/vim-fugitive'
" A gitk clone for vim: to test
Plug 'gregsexton/gitv'
" Scripts for creating gists
Plug 'mattn/gist-vim'
" Git gutter
Plug 'airblade/vim-gitgutter'


" ------------------------------------
" Colors
" ------------------------------------
Plug 'altercation/vim-colors-solarized'
Plug 'zeis/vim-kolor'
Plug 'tomasr/molokai'


" ------------------------------------
" Programming
" ------------------------------------

" -------------------
" Syntax check
" & highlight
" -------------------
" Editorconfig support
Plug 'editorconfig/editorconfig-vim'

" Syntax checking for various languages
Plug 'scrooloose/syntastic'

" A syntax checker / linter for vim files
Plug 'dbakker/vim-lint'

" Realign tabs
Plug 'godlygeek/tabular'


" -------------------
" Snippets
" -------------------
" Load on nothing
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips', { 'on': [] }
Plug 'Valloric/YouCompleteMe', { 'on': [] }

augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                     \| call youcompleteme#Enable() | autocmd! load_us_ycm
augroup END

Plug 'honza/vim-snippets'
Plug 'isRuslan/vim-es6'

" Calling web apis
Plug 'mattn/webapi-vim'


" Displpay tags elements of a source code (classes, variables ...)
if executable('ctags')
  Plug 'majutsushi/tagbar'
endif


" -------------------
" Language: Python
" -------------------
" Virtual env manipulation inside vim
Plug 'jmcantrell/vim-virtualenv'

" Python completion
" Need to install the python Jedi autocompletion app to work
" see https://github.com/davidhalter/jedi-vim#installation
Plug 'davidhalter/jedi-vim'

" Pydoc integration
Plug 'fs111/pydoc.vim'


" -------------------
" Language: Scala
" -------------------
Plug 'derekwyatt/vim-scala'
Plug 'derekwyatt/vim-sbt'
Plug 'gre/play2vim'


" -------------------
" Language: HTML,
" XML, and generators:
"  * mustache
"  * handlebars
" -------------------
Plug 'othree/html5.vim'
" Enhanced markdown support
Plug 'jtratner/vim-flavored-markdown'


" -------------------
" Format: JSON
" -------------------
Plug 'elzr/vim-json'


" -------------------
" Language: JavaScript
" -------------------
" ------ "
" Syntax "
" ------ "
" Options
" 'jelera/vim-javascript-syntax' " Jelera: No indent file
" 'pangloss/vim-javascript'      " pangloss' is probably the oldest, lot of
                               " contributors but not up-to-date
                               " Includes indent settings
" 'othree/yajs.vim'              " othree has the latest support
"                                " no indent file, fork of jelera
" The "for" is required so the syntax registers on filetype, otherwise
" yajs has trouble overriding the default js syntax due to runtime order

" Yet Another JavaScript Syntax file for Vim. Key differences:
"
"  * Use 'javascript' as group name's prefix, not 'javaScript' nor
"    JavaScript'. Works great with SyntaxComplete.
"  * Recognize Web API and DOM keywords. Base on Mozilla's WebIDL files
"  * Works perfect with javascript-libraries-syntax.vim
"  * Remove old, unused syntax definitions.
"  * Support ES6 new syntax, ex: arrow function =>.
Plug 'othree/yajs.vim'

" ------------- "
" Syntax Addons "
" ------------- "
" Options
"'gavocanov/vim-js-indent'                " Indent from pangloss, works well
                                          " with yajs well
"'jiangmiao/simple-javascript-indenter'   " Alternative js indent
"'jason0x43/vim-js-indent'                " Use HTML's indenter with
                                          " TypeScript support
Plug 'gavocanov/vim-js-indent'

" Syntax for JavaScript libraries," including Angular. This is the hotness you
"want to autocomplete ng-repeat et al. in your html.
" Support libs id:
"
" * jQuery: jquery
" * underscore.js: underscore
" * Lo-Dash: underscore
" * Backbone.js: backbone
" * prelude.ls: prelude
" * AngularJS: angularjs
" * AngularUI: angularui
" * AngularUI Router: angularuirouter
" * React: react
" * Flux: flux
" * RequireJS: requirejs
" * Sugar.js: sugar
" * Jasmine: jasmine
" * Chai: chai
" * Handlebars: handlebars
Plug 'othree/javascript-libraries-syntax.vim'

" repo for UltiSnips & Snipmate for angular to be included as a submodule for
" use in your .vim directory." ngfor<tab> ftw
"Plug 'matthewsimo/angular-vim-snippets'

" es.next support
Plug 'othree/es.next.syntax.vim'

" ---------- "
" Completion "
" ---------- "
Plug 'othree/jspc.vim'
" Ternjs vim integration
Plug 'ternjs/tern_for_vim'

" ------ "
" JS DOC "
" ------ "
" <leader>pd on function to insert jsdoc above
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/jsdoc-syntax.vim'

" ----- "
" Tests "
" ----- "
" Jasmine tests support
Plug 'claco/jasmine.vim'

" Plug 'mtscout6/syntastic-local-eslint.vim'


" ------------------------------------
" DevOps
" ------------------------------------
Plug 't9md/vim-chef'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'docker/docker', {'rtp': 'contrib/syntax/vim/'}

" Add plugins to &runtimepath
call plug#end()


" ----------------------------------------------------------------------------
" OS Related
" ----------------------------------------------------------------------------
" ------------------------------------
" Clipboard -- use os clipboard
" ------------------------------------
set pastetoggle=<F12>

if empty($SSH_CONNECTION) && has('clipboard')
    set clipboard=unnamed  " Use clipboard register
    if has('nvim') && !has('mac')
    " Share X windows clipboard. NOT ON NEOVIM -- neovim automatically uses
    " system clipboard when xclip/xsel/pbcopy are available.
        set clipboard=unnamedplus
    elseif has('unnamedplus')
        set clipboard+=unnamedplus
    endif
endif


" ------------------------------------
" General
" ------------------------------------
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


" ------------------------------------
" Formatting
" ------------------------------------
" Enable plugins and indentation rules loading according to file types
if has("autocmd")
    filetype plugin indent on
endif

set autoindent                 " indent at the same level of the previous line
set nowrap                     " don't wrap long lines
set showmatch                  " show matching brackets/parenthesis
set foldenable                 " auto fold code

" Indenting
set modeline
set shiftwidth=4               " use indents of 4 spaces
set expandtab                  " tabs are spaces, not tabs
set tabstop=4                  " an indentation every 4 columns
set softtabstop=4              " let backspace delete indent

" Remove trailing whitespaces and ^M chars
if has("autocmd")
    autocmd FileType c,cpp,java,scala,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
endif

" Highlight problematic whitespaces
" See http://vim.wikia.com/wiki/Highlight_unwanted_spaces for more info
set list                      " Whitespace characters are made visible
set listchars=tab:>.,trail:.,extends:#,nbsp:.


" ------------------------------------
" Search
" ------------------------------------
set incsearch                  " find as you type search
set hlsearch                   " highlight search terms
set winminheight=0             " windows can be 0 line high
set ignorecase                 " case insensitive search
set smartcase                  " case sensitive when uc present


" ------------------------------------
" GUI
" ------------------------------------
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
  if has('fugitive')
    set statusline+=%{fugitive#statusline()} " Git Hotness
  endif
  set statusline+=\ [%{&ff}/%Y]            " Filetype
  set statusline+=\ [%{getcwd()}]          " Current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif


" ------------------------------------
" Completion
" ------------------------------------
set wildmenu                   " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]  " backspace and cursor keys wrap to

" YouCompleteMe and UltiSnips compatibility
" taken from : https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-171966710
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction

if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"


" ------------------------------------
" Navigation
" ------------------------------------
nmap <C-n> :bn<CR>
nmap <C-p> :bp<CR>


" ------------------------------------
" Theme
" ------------------------------------
set background=dark            " Assume a dark background
colorscheme molokai
