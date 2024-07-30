return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
    vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float<CR>', {})
  
  -- Automatically open Neo-tree when starting Neovim with a directory
    vim.cmd([[
      augroup OpenNeoTreeOnStart
        autocmd!
        autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | exe 'Neotree filesystem reveal left' | endif
      augroup END
    ]])
  end
}

