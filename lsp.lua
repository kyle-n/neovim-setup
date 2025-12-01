require('mason').setup {
	registries = {
		"github:mason-org/mason-registry",
		"github:Crashdummyy/mason-registry"
	}
}

vim.lsp.enable('tsserver')

vim.lsp.config('tsserver', {
  cmd = {'typescript-language-server', '--stdio'},
  filetypes = { 'typescript' },
  root_dir = vim.fs.root(0, {'package.json', '.git'}),
  on_attach = on_attach,
  capabilities = capabilities,
})

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format { async = true }
end, {})

