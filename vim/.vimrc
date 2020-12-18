"====================================================
"    PLUGINS
" ====================================================

call plug#begin()

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" GUI enhancements
Plug 'preservim/nerdtree'       " File Explorer
Plug 'itchyny/lightline.vim'    " Better Status Bar

" Text Manipulation
Plug 'mg979/vim-visual-multi', {'branch': 'master'}       " multiple selections
Plug 'tpope/vim-surround'                                 " Surround with parentheses & co

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}           " so why should I use vim

call plug#end()


"====================================================
"    PLUGINS SETTING
" ====================================================

" fzf
""""""""""""""""""""""""""""""""""""""""""""""
map ; :Files<CR>
map ' :Commits<CR>
let g:fzf_layout = { 'down': '~30%' }

" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1      " show hidden file in nerd tree
map <C-e> :NERDTreeToggle<CR>

" lightline
""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

" lightline
""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
      \'coc-tsserver',
      \]

" ====================================================
"    SETTINGS
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
set cursorline            " highlight current line
set showmatch             " highlight matching [{()}]
set mouse+=a              " mouse support
set ttyfast               " improve redrawing
set laststatus=2          " show the status line at the bottom
set noshowmode            " lightline shows status

" Buffers
""""""""""""""""""""""""""""""""""""""""""""""
set hidden


" ====================================================
"    CUSTOM SHORTCUTS 
" ====================================================

" Modifiers
""""""""""""""""""""""""""""""""""""""""""""""

nmap fw   :w<CR>
nmap fq   :q<CR>
nmap fwq  :wq<CR>

" Leader
""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "       " leader is space

