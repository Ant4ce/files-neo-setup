return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "rust", "c", "c_sharp", "css", "csv", "go", "html", "haskell", "java", "json", "markdown", "php", "r", "swift", "typescript", "zig"},
      highlight = {enabled = true},
      indent = {enable = true},
    })
  end
}
