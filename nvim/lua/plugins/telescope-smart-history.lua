return {
  "nvim-telescope/telescope-smart-history.nvim",
  dependencies = {
    "kkharji/sqlite.lua",
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          history = {
            path = "~/.local/share/nvim/databases/telescope_history.sqlite3",
            limit = 100,
          },
        },
      })
      telescope.load_extension("smart_history")
    end,
  },
}
