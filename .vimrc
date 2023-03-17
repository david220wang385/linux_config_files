filetype on
filetype plugin on
filetype indent on

syntax on
set number 
set relativenumber


" Set shift width to 4 spaces.
set shiftwidth=3

" Set tab width to 4 columns.
set tabstop=3

" Use space characters instead of tabs.
set expandtab

set listchars=tab:▷▷⋮
set invlist

set cursorline
set cursorcolumn
hi clear CursorLine
hi link CursorLine CursorColumn
hi CursorColumn cterm=NONE ctermbg=234
hi CursorLineNr cterm=inverse

set noswapfile
