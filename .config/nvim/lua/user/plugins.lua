-- Bootstrap Packer if not installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print("Installing packer...")
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
  print("Packer installed!")
end

-- Initialize and configure plugins
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer manages itself
    use 'nvim-lua/plenary.nvim' -- Utility functions

    -- theme
    use {
        'catppuccin/nvim',
        as = 'catppuccin', 
        tags = 'v0.2.4.',
        config = function()
          require("catppuccin").setup({
            transparent_background = false,
        })
        vim.cmd("colorscheme catppuccin-mocha")
        end
    }
end)
