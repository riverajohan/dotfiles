return {
  "echasnovski/mini.comment",
  event = "VeryLazy",
  opts = {
    options = {
      custom_commentstring = function()
        return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
      end,
    },
    mappings = {
      -- Normal and Visual modes
      comment = "<leader>/",
      -- Toggle comment on current line
      comment_line = "<leader>/",
      -- Toggle comment on visual selection
      comment_visual = "<leader>/",
      -- Define 'comment' textobject (like `dgc` - delete whole comment block)
      textobject = "<leader>/",
    },
  },
}
