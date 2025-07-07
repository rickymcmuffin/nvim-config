vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- switch between windows
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- move windows
vim.keymap.set("n", "<A-H>", "<C-w>H")
vim.keymap.set("n", "<A-J>", "<C-w>J")
vim.keymap.set("n", "<A-K>", "<C-w>K")
vim.keymap.set("n", "<A-L>", "<C-w>L")
vim.keymap.set("n", "<A-i>", "<C-w>r")
vim.keymap.set("n", "<A-o>", "<C-w>R")


-- resize windows
vim.keymap.set("n", "<A-->", "<C-w>-")
vim.keymap.set("n", "<A-=>", "<C-w>+")
vim.keymap.set("n", "<A-,>", "<C-w><")
vim.keymap.set("n", "<A-.>", "<C-w>>")

-- creates new terminal
-- vim.keymap.set("n", "<C-t>", ":split<cr>:term<cr>i")

-- exits terminal
-- vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:q<cr>")

-- escape terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- moves highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor in the middle when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- paste from system clipboard
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

vim.keymap.set("n", "<Esc>", ":let @/ = \"\"<cr>");


