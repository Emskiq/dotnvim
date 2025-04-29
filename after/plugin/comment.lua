local api = require('Comment.api')

-- Toggle current line (linewise) using C-/
vim.keymap.set('n', '<C-/>', api.toggle.linewise.current)

-- Toggle selected
local esc = vim.api.nvim_replace_termcodes(
'<ESC>', true, false, true
)

-- Toggle selection (linewise)
vim.keymap.set('v', '<C-/>', function()
	vim.api.nvim_feedkeys(esc, 'nx', false)
	api.toggle.linewise(vim.fn.visualmode())
end)
