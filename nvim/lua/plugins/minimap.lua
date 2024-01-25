return {
  "wfxr/minimap.vim",
  build = "cargo install --locked code-minimap",
  cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
  config = function()
    vim.g.minimap_width = 12
    vim.g.minimap_auto_start = 0
    vim.g.minimap_auto_start_win_enter = 0
    vim.g.minimap_left = 0
    vim.g.minimap_block_filetypes = { "fugitive", "nvim-tree", "tagbar", "fzf", "telescope", "NvimTree" }
    vim.g.minimap_block_buftypes = { "nofile", "nowrite", "quickfix", "terminal", "prompt", "NvimTree" }
    vim.g.minimap_close_filetypes = { "startify", "netrw", "vim-plug", "NvimTree" }
    vim.g.minimap_highlight_range = 1
    vim.g.minimap_highlight_search = 1
    vim.g.minimap_git_colors = 1
  end,
  keys = {
    { "<leader>m", "<cmd>MinimapToggle<cr>", desc = "Minimap Toggle" },
  },
}
