local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.diagnostic.disable()

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
end)

-- LSP Specific settings (for Mason, C++ and Lua)
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'clangd', 'lua_ls', 'solidity', 'rust_analyzer'},
})

local lspconfig = require 'lspconfig'

-- C/C++
lspconfig.clangd.setup({
    cmd = {'clangd', '--header-insertion=never'},
})

-- Lua
local lua_opts = lsp_zero.nvim_lua_ls()
lspconfig.lua_ls.setup(lua_opts)

-- Solidity
lspconfig.solidity.setup({
    cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
    filetypes = { 'solidity' },
    root_dir = lspconfig.util.find_git_ancestor,
    single_file_support = true,
})

-- Auto completion settings
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	formatting = lsp_zero.cmp_format(),
	mapping = cmp.mapping.preset.insert({
		['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
		['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
		['<Enter>'] = cmp.mapping.confirm({ select = true }),
	}),
})
