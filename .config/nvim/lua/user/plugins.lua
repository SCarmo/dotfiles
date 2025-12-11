-- Bootstrap Lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
  print("Lazy.nvim installed!")
end
vim.opt.rtp:prepend(lazypath)

-- Plugin specifications
require("lazy").setup({
  -- Essential plugins
  "nvim-lua/plenary.nvim", -- Utility functions (dependency for many plugins)

  -- Treesitter for syntax highlighting (load early)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    priority = 100, -- Load early
  },

  -- Language Server Protocol support
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls", "rust_analyzer", "codebook", "gopls", "ruby-lsp", "rubocop", "pyrefly" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
  },

  -- Autocompletion system
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",   -- Buffer source
      "hrsh7th/cmp-path",     -- Path source
      "L3MON4D3/LuaSnip",     -- Snippet engine
      "saadparwaiz1/cmp_luasnip", -- Snippet source
    },
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Key binding helper
  {
    "folke/which-key.nvim",
  },

  -- Theme (load last after all functionality is configured)
  { 
    "catppuccin/nvim", 
    name = "catppuccin",
    priority = 1000, -- Load last
  },
})
