return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    auto_install = {
      enable = true,
    }, 
    ensure_installed = {"lua", "javascript", "rust", "c"},
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
