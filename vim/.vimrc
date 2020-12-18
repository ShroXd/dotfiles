"====================================================
"    PLUGINS
" ====================================================

call plug#begin()

" GUI enhancements
Plug 'preservim/nerdtree'       " File explorer

call plug#end()


" ====================================================
"    EDITTOR SETTINGS
" ====================================================

" Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""
colorscheme default

" Space & Tabs
""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " insert 2 spaces on a tab
set expandtab       " tabs are spaces, mainly because of python

" UI Config
""""""""""""""""""""""""""""""""""""""""""""""
set number                " show line numbers
set relativenumber        " show relative numbering
set showcmd               " show command in bottom bar
set cursorline            " highlight current line
set showmatch             " highlight matching [{()}]
set laststatus=2          " show the status line at the bottom
set mouse+=a              " mouse support
set ttyfast               " improve redrawing

" Buffers
""""""""""""""""""""""""""""""""""""""""""""""
set hidden

" Plugin Setting
""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1      " show hidden file in nerd tree


" ====================================================
"    CUSTOM SHORTCUTS 
" ====================================================

" Leader
""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

" Plugin Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""
map <C-e> :NERDTreeToggle<CR>
