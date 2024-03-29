return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.root_dir = opts.root_dir
      or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.diagnostics.twigcs.with({
        filetypes = {
          "twig",
        },
      }),
      nls.builtins.formatting.prettier.with({
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "html",
          "json",
          "jsonc",
          "yaml",
          "markdown",
          "markdown.mdx",
          "graphql",
          "handlebars",
        },
      }),
      nls.builtins.formatting.eslint_d.with({
        filetypes = {
          "typescript",
          "typescriptreact",
          "vue",
        },
      }),
      nls.builtins.formatting.stylelint.with({
        filetypes = {
          "css",
          "scss",
          "less",
          "vue",
        },
      }),
    })
  end,
}
