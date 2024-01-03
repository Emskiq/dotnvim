-- Open file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moving highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the cursor in the middle when cruising with C-d/u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Overwrite word w/out copying it
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete w/out copying
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Replace the selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Clear last search highlights
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>")
