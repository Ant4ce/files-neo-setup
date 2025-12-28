return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        -- TODO: Need more sources and pre-install through mason-lspconfig.
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end
}
