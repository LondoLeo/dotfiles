local lsp_zero = require('lsp-zero')


lsp_zero.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	--  gd - Go Definition
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	--  gD - Go Declaration
	vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
	--  gT - Go Type
	vim.keymap.set("n", "gT", function() vim.lsp.buf.type_definition() end, opts)
	--  dr - Display References
	vim.keymap.set("n", "<leader>dr", function() vim.lsp.buf.references() end, opts)
	--  ds - Display Signature
	vim.keymap.set("n", "<leader>ds", function() vim.lsp.buf.signature_help() end, opts)

	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	--  rs - Rename Symbol
	vim.keymap.set("n", "<leader>rs", function() vim.lsp.buf.rename() end, opts)
	--  dd - Display Diagnostics
	vim.keymap.set("n", "<leader>dd", function() vim.lsp.diagnostic.open_float() end, opts)
	--  dp - Diagnostics Prev
	vim.keymap.set("n", "<leader>dp", function() vim.lsp.diagnostic.goto_prev() end, opts)
	--  dn - Diagnistics Next
	vim.keymap.set("n", "<leader>dn", function() vim.lsp.diagnostic.goto_next() end, opts)
end)



require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'bashls', 'clangd',  'dockerls',  'elp', 'html', 'jsonls', 'tsserver', 'ltex', 'lua_ls', 'marksman', 'pyright',  'yamlls', 'zls'},
	handlers = {
		lsp_zero.default_setup,
		lua_ls = function()
			local lua_opts = lsp_zero.nvim_lua_ls()
			require('lspconfig').lua_ls.setup(lua_opts)
		end,
	}

})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}


require('luasnip.loaders.from_vscode').lazy_load()


cmp.setup({

	sources = {
		{name = 'path'},
		{name = 'nvim_lsp'},
		{name = 'nvim_lua'},
		{name = 'luasnip', keyword_length = 2},
		{name = 'buffer', keyword_length = 3},
	},
	formatting = lsp_zero.cmp_format({details = false}),
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
})
