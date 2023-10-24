-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}
lvim.builtin.telescope.pickers.live_grep = {
  theme = "dropdown",
  layout_strategy = "center",
  layout_config = {
    width = 0.6,
  },
}

lvim.builtin.telescope.pickers.current_buffer_fuzzy_find = {
  theme = "dropdown",
  layout_strategy = "center",
  layout_config = {
    width = 0.6,
  },
}

lvim.builtin.telescope.pickers.git_files = {
  theme = "dropdown",
  layout_strategy = "center",
  layout_config = {
    width = 0.6,
  },
}

lvim.builtin.telescope.defaults.path_display = { "absolute" }
lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
  pcall(telescope.load_extension, "neoclip")
  pcall(telescope.load_extension, "smart_history")
end
