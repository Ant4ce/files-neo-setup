return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {"lua", "javascript", "rust", "c"},
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
