local opts = { noremap = true, silent = true }
local map = vim.keymap.set
vim.g.mapleader = " "
-- keymap.set({ "i", "n", "v" }, "kj", "<Esc>", { noremap = true, silent = false })

-- search movement keeps cursor in middle
map("n", "N", "Nzzzv", opts)
map("n", "n", "nzzzv", opts)

-- vertical movement keeps cursor in middle
map("n", "<C-j>", "<C-d>zz", opts)
map("n", "<C-k>", "<C-u>zz", opts)

-- vertical movement keeps cursor in middle (visual mode)
map("v", "<C-j>", "<C-d>zz", opts)
map("v", "<C-j>", "<C-u>zz", opts)

-- copy into system clipboard with CTRL + C
map("v", "<C-c>", '"+y', opts)

-- copy into host system clipboard with <leader>y
map("v", "<leader>y", '"*y', opts)

-- move lines around
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- the greatest remap ever (Primeagen)
map("v", "<leader>p", '"_dP', opts)

map("n", "<Tab>", ":bnext<cr>", { noremap = true, silent = true })
map("n", "<S-Tab>", ":bprevious<cr>", { noremap = true, silent = true })
