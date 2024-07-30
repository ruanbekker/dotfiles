-- Typecraft:
-- https://youtu.be/zHTeCSVAFNY?si=WJTndTwm01buRMdB

-- Plugins:
-- https://github.com/nvim-telescope/telescope.nvim
-- https://github.com/catppuccin/nvim
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- https://github.com/nvim-lualine/lualine.nvim
-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/nvim-telescope/telescope-ui-select.nvim
--
-- Commands:
-- ctrl+p      : find files
-- space + fg  : live grep
-- space + ca  : code-actions
-- ctrl+n      : neotree
-- shift + k   : hover docs
-- space + gd  : buf definition (lspconfig)
-- ctrl+xo     : lsp complete
--
--
-- Vim Commands:
-- ctrl+v and shift+v
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

