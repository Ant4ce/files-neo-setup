return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            },
        },
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", -- Lua LSP
        "rust_analyzer", -- Rust LSP
        "stylua", -- Lua Formatter
        "prettier", -- JS/TS Formatter
        "shfmt", -- Bash Formatter
        "eslint_d", -- Lua Linter
        "shellcheck", -- Bash Linter
        "luacheck" -- Lua Linter
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()

      vim.lsp.config("lua_ls", {})
      vim.lsp.config("rust_analyzer", {})

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local opts = { buffer = ev.buf}
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
          vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
        end,
      })
    end,
  },
}
