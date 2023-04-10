-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs and indentation
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Line wrapping
vim.opt.wrap = false

-- Search settings
-- lowercase is case insensitive 
-- uppercase is case sensitive
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Disable swapfile and backup, set undo dir
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- Appearance
vim.opt.signcolumn = "yes" -- Useful for viewing diffs
vim.opt.termguicolors = true -- Needed for colors to work correctly
vim.opt.background = 'dark'
vim.opt.scrolloff = 9 -- Line buffer for top/bottom of screen

-- Cursor line
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.api.nvim_set_hl(0, 'CursorLineNr', { cterm=reverse, fg=0, bg=0xd78700})
vim.api.nvim_set_hl(0, 'CursorLine', { bg=0x1c1c1c })
vim.api.nvim_set_hl(0, 'CursorColumn', { bg=0x1c1c1c })

-- Filenames with @ char will be treated as single word
vim.opt.isfname:append("@-@") 

-- Set <leader> key
vim.g.mapleader = " "
