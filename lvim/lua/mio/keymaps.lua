-- Keymaps
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

keymap("n", "<leader><leader>q", ":q!<CR>", default_opts)
keymap("i", "jk", "<ESC>", default_opts)

-- vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)
lvim.builtin.which_key.mappings["m"] = {
  name = "Marks",
  s = { ":lua require('nvim-tree.api').marks.navigate.select()<CR>", "Select Mark" },
  n = { ":lua require('nvim-tree.api').marks.navigate.next()<CR>", "Next Mark" },
  p = { ":lua require('nvim-tree.api').marks.navigate.previous()<CR>", "Prev Mark" },
}


-- Whichkey
lvim.builtin.which_key.mappings["H"] = {
  name = "Harpoon",
  a = { ":lua require('harpoon.mark').add_file()<CR>", "Add" },
  l = { ":Telescope harpoon marks<CR>", "List" },
}
lvim.builtin.which_key.mappings["ss"] = { ":Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<CR>",
  "Search current buffer" }
lvim.builtin.which_key.mappings["bm"] = { ":MinimapToggle<CR>", "Minimap" }
lvim.builtin.which_key.mappings["bN"] = { ":enew<CR>", "New Buffer" }
lvim.builtin.which_key.mappings["bp"] = { "<Cmd>BufferLineTogglePin<CR>", "Toggle pin" }
lvim.builtin.which_key.mappings["bP"] = { "<Cmd>BufferLineGroupClose ungrouped<CR>", "Delete non-pinned buffers" }
lvim.builtin.which_key.mappings["l0"] = { ":lua vim.diagnostic.disable()<CR>", "Disable Diagnostics" }
lvim.builtin.which_key.mappings["l1"] = { ":lua vim.diagnostic.enable()<CR>", "Enable Diagnostics" }
lvim.builtin.which_key.mappings["lo"] = { ":SymbolsOutline<CR>", "Enable Diagnostics" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}


lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Copilot
lvim.builtin.which_key.mappings["C"] = {
  name = "Copilot",
  s = { ":Copilot suggestion<CR>", "Suggestion" },
  p = { ":Copilot panel<CR>", "Panel" },
  t = { ":Copilot toggle<CR>", "Toggle" },
}

-- Hop
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ current_line_only = true })
end, { remap = true })
vim.keymap.set('', 'F', function()
  -- hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  hop.hint_char1({ current_line_only = false })
end, { remap = true })
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

-- Bufferline
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<M-h>"] = ":BufferLineMovePrev<CR>"
lvim.keys.normal_mode["<M-l>"] = ":BufferLineMoveNext<CR>"
lvim.builtin.which_key.mappings["1"] = { ":lua require('bufferline').go_to(1, true)<CR>", "Tab 1" }
lvim.builtin.which_key.mappings["2"] = { ":lua require('bufferline').go_to(2, true)<CR>", "Tab 2" }
lvim.builtin.which_key.mappings["3"] = { ":lua require('bufferline').go_to(3, true)<CR>", "Tab 3" }
lvim.builtin.which_key.mappings["4"] = { ":lua require('bufferline').go_to(4, true)<CR>", "Tab 4" }
lvim.builtin.which_key.mappings["5"] = { ":lua require('bufferline').go_to(5, true)<CR>", "Tab 5" }
lvim.builtin.which_key.mappings["6"] = { ":lua require('bufferline').go_to(6, true)<CR>", "Tab 6" }
lvim.builtin.which_key.mappings["7"] = { ":lua require('bufferline').go_to(7, true)<CR>", "Tab 7" }
lvim.builtin.which_key.mappings["8"] = { ":lua require('bufferline').go_to(8, true)<CR>", "Tab 8" }
lvim.builtin.which_key.mappings["9"] = { ":lua require('bufferline').go_to(9, true)<CR>", "Tab 9" }
lvim.builtin.which_key.mappings["`"] = { ":e #<CR>", "Switch Tab" }

-- Session
lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}

-- Lsp format
lvim.builtin.which_key.mappings["l"]["f"] = {
  function()
    require("lvim.lsp.utils").format { timeout_ms = 2000 }
  end,
  "Format",
}

-- Refactor
lvim.builtin.which_key.mappings["r"] = {
  name = "Refactor",
  mode = "v",
  r = { ":lua require('refactoring').select_refactor()<CR>", "Refactor Options" },
  e = { "lua require('refactoring').refactor('Extract Function')<CR>", "Extract Function" },
  f = { "lua require('refactoring').refactor('Extract Function To File')<CR>", "Extract Function To File" },
  v = { "lua require('refactoring').refactor('Extract Variable')<CR>", "Extract Variable" },
  i = { "lua require('refactoring').refactor('Inline Variable')<CR>", "Inline Variable" },
}

-- Windows
keymap("n", "vs", ":vs<CR>", default_opts)
-- keymap("n", "sp", ":sp<CR>", default_opts)
keymap("n", "<C-L>", "<C-W><C-L>", default_opts)
keymap("n", "<C-K>", "<C-W><C-K>", default_opts)
keymap("n", "<C-J>", "<C-W><C-J>", default_opts)
keymap("n", "<C-H>", "<C-W><C-H>", default_opts)

-- Misc
keymap("n", "gd", "gd<CR> zt<CR>", default_opts)
keymap('n', 'n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], default_opts)
keymap('n', 'N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], default_opts)
keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], default_opts)
keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], default_opts)
keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], default_opts)
keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], default_opts)
keymap('n', '<Leader>h', ':noh<CR>', default_opts)
