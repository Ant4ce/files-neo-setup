return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set('n', '<C-i>', ':Neotree filesystem reveal left reveal=true<CR>', {})
    vim.keymap.set('n', '<C-o>', ':Neotree toggle=true', {})
    vim.keymap.set('n', '<C-p>', ':Neotree float git_status git_base=main', {})
  end
}
