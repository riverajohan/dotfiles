-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "vue" },
  },
  {
    command = "prettier",
    filetypes = {
      -- "typescript",
      "typescriptreact",
      "scss",
      "css",
    },
  },
  {
    name = "stylelint",
    filetypes = { "css", "vue" }
  },
})
