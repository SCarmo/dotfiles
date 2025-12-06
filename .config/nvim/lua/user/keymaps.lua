-- Leader key
vim.g.mapleader = ' ' -- Comma as the leader key
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true })

-- Config Shortcuts
vim.api.nvim_set_keymap('n', '<Leader>ev', ':vsplit ${VIMRC}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ekm', ':vsplit ${VIM_KEYMAPS}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ez', ':vsplit ${ZSHRC}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ep', ':vsplit ${VIM_PLUGINS}<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>sv', ':luafile ${VIMRC}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>sz', ':source ${ZSHRC}<CR>', { noremap = true, silent = true })

-- Navigation
vim.api.nvim_set_keymap('i', 'jj', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kk', '<esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', 'JJ', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'JK', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'KJ', '<esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'KK', '<esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<S-h>', '0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-l>', '$', { noremap = true, silent = true })

-- Plugin Shortcuts
vim.api.nvim_set_keymap('n', '<Leader>ps', ':PackerSync', { noremap = true, silent = true })
