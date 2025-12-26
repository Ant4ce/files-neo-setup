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
    -- These command work but beware that <C-o> the ":Neotree filesystem close left<CR>" doesn't work well when neovim is running within
    -- Mintty on Windows, it won't redraw the screen correctly and have not found a good workaround. 
    -- This is apparently a known issue with Mintty on Windows, the rest of the commands work fine. My recommendation is 
    -- to not use the second command while on windows or to use a different terminal other than Mintty. Won't create a different config for 
    -- this specific Windows case as I want one config for all, just beware and comment that command on windows. 
    vim.keymap.set('n', '<C-i>', ':Neotree filesystem reveal left<CR>', { desc = 'Reveals Neo-tree filesystem on the left'})
    vim.keymap.set('n', '<C-o>', ':Neotree filesystem close left<CR>', { desc = 'Closes the neo-tree filesystem'})
    vim.keymap.set('n', '<C-p>', ':Neotree float git_status<CR>', { desc = 'Shows git status relative to most recent commit at HEAD'})
  end
}
