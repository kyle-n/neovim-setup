local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('Mofiqul/dracula.nvim')
Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')
Plug('romgrk/barbar.nvim')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('neoclide/coc.nvim', {['branch'] = 'release'})
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {['tag'] = 'v0.1.9' })
Plug('nvim-lua/plenary.nvim')
Plug('github/copilot.vim')
Plug('alvan/vim-closetag')
Plug('windwp/nvim-autopairs')
Plug('lewis6991/gitsigns.nvim')

vim.call('plug#end')

home = os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "common"
require "vimtree"
require "barbarconfig"
dofile(vim.fn.stdpath('config') .. '/theme.lua')
dofile(vim.fn.stdpath('config') .. '/lsp.lua')

require('gitsigns').setup {
	current_line_blame = true,
}

require('nvim-autopairs').setup()

vim.cmd("source ~/.vimrc")
vim.opt.wrap = false
vim.g.loaded_matchparen = true
