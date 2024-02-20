require('gitsigns').setup()

--- Set GitSign column Transperant (when changing the background to light/dark)
vim.keymap.set("n", "<leader>gs", "<cmd>highlight SignColumn guibg=NONE<CR>")
