
-- Enable Neovim's fast Lua module loader (must be first)
if vim.loader then
  vim.loader.enable()
end

-- Load plugin manager
require('user.plugins')

require('user.options')
require('user.keymaps')

-- Syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')


-- Set up plugins with dependencies
require('user.treesitter') -- Set up before LSP for better highlighting
-- require('user.lsp')  -- Depends on language servers being available
require('user.completion') -- Depends on LSP configuration
require('user.telescope') -- Often integrates with LSP

-- Configure UI components last
require('user.theme')
