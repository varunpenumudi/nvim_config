require("config.lazy")

-- line numbers 
vim.o.number = true
vim.o.relativenumber = true

-- tabs and spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- blocky cursor 
vim.o.guicursor = "n-v-c:block,i:block-blinkwait100-blinkoff400-blinkon250"

-- windows
vim.o.splitbelow = true
vim.o.splitright = true
vim.keymap.set("n", "<leader>n", ":vnew<CR>")
vim.keymap.set("n", "<leader>N", ":new<CR>")

-- quality of life keymaps
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
