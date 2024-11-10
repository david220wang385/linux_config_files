filetype on
filetype plugin on
filetype indent on

syntax on
set number 
set relativenumber

" Set shift width to 3 spaces.
set shiftwidth=3

" Set tab width to 3 columns.
set tabstop=3

" Use space characters instead of tabs.
set expandtab

" Use paste mode by default when in INSERT mode
" Prevents errors from pasting from external sources
set paste

set listchars=tab:▷▷⋮
set invlist

set cursorline
set cursorcolumn
hi clear CursorLine
hi link CursorLine CursorColumn
hi CursorColumn cterm=NONE ctermbg=234
hi CursorLineNr cterm=inverse

set noswapfile
