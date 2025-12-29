return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua, -- Lua formatter
        null_ls.builtins.formatting.prettier, -- JS/TS formatter & others like JSON files.
        null_ls.builtins.formatting.shfmt, -- Bash formatter
        null_ls.builtins.diagnostics.eslint_d, -- JS/TS linter
        null_ls.builtins.diagnostics.luacheck, -- Lua linter
        null_ls.builtins.diagnostics.shellcheck, -- Bash Linter
        -- Note: Only certain languages are suitable to install through Mason 
        -- and none-ls. Rust for example doesn't work as you just add tools like
        -- rustfmt & clippy through "rustup". You CAN however install all the LSP's.
        -- Just don't install linters and formatters for languages like rust where the 
        -- language itself ships linters and formatters for you. 
        -- Languages that work with null-ls well:
        -- Javascript / Typescript 
        -- lua 
        -- Bash
        -- null-ls is good for integratting standalone binaries which are linters or 
        -- formatters.
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file"})
  end
}
