" ====================================================
"    PLUGINS
" ====================================================

call plug#begin()

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" GUI enhancements
Plug 'preservim/nerdtree'       " File Explorer
Plug 'itchyny/lightline.vim'    " Better Status Bar
Plug 'preservim/tagbar'         " Pane with tags

" Text Manipulation
Plug 'mg979/vim-visual-multi', {'branch': 'master'}       " multiple selections
Plug 'tpope/vim-surround'                                 " Surround with parentheses & co
Plug 'gabrielelana/vim-markdown'                          " Markdown support

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}           " so why should I use vim

" Theme
Plug 'morhetz/gruvbox'

call plug#end()


" ====================================================
"    PLUGINS SETTING
" ====================================================

" fzf
""""""""""""""""""""""""""""""""""""""""""""""
map ] :Windows<CR>
map , :Files<CR>
map . :BCommits<CR>
let g:fzf_layout = { 'down': '~30%' }

" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1      " show hidden file in nerd tree
map ; :NERDTreeToggle<CR>

" lightline
""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

" Tagbar
""""""""""""""""""""""""""""""""""""""""""""""
map ' :TagbarToggle<CR>
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

" coc
""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
      \'coc-tsserver',
      \]

" ====================================================
"    SETTINGS
" ====================================================

" Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
set background=dark

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

" Cursor
""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Optionally reset the cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" Buffers
""""""""""""""""""""""""""""""""""""""""""""""
set hidden


" ====================================================
"    CUSTOM SHORTCUTS 
" ====================================================

" Modifiers
""""""""""""""""""""""""""""""""""""""""""""""

" Leader
""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "       " leader is space


" ====================================================
"    Script 
" ====================================================

" insert image path & auto formatting it
function! MarkdownImageInsert()
  call inputsave()
  let dir = input('Image dir: ')
  call inputrestore()
  
  execute "normal! o![]"
  let pos = getcurpos()
  execute "normal! a(" . dir . ")"
  call setpos('.', pos)
endfunction

nmap <leader>i :call MarkdownImageInsert()<CR>


" insert link path & auto formatting it
function! MarkdownLinkInsert()
  call inputsave()
  let dir = input('Link dir: ')
  call inputrestore()
  
  execute "normal! a[]"
  let pos = getcurpos()
  execute "normal! a(" . dir . ")"
  call setpos('.', pos)
endfunction

nmap <leader>l :call MarkdownLinkInsert()<CR>
