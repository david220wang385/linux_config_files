vim.g.mapleader = " "

-- Shorthand
local keymap = vim.keymap

-- Project View
keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- Move line up/down with indent
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Auto-center cursor when scrolling up/down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Autocenter cursor when searching
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- + is the system clipboard register
-- y is selected text yank, Y is yank line
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- Uppercase D in visual mode discards into black hole register
keymap.set("v", "D", [["_d]])

-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>")

-- Disable ex mode
keymap.set("n", "Q", "<nop>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Search and replace the word you are on - global
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make file into an executable (useful for Bash scripting and Python)
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
    print('Sourced!')
end)

-- Window splitting keybinds
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split
keymap.set("n", "<leader>sh", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>se", "<C-w>=") -- make splits equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize/minimize window
