-- general
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.log.level = "warn"
lvim.leader = "space"

lvim.format_on_save = true
lvim.mouse = "a"
vim.opt.relativenumber = true
vim.opt.scrolloff = 2
vim.opt.cmdheight = 0
lvim.transparent_window = true
vim.opt.termguicolors = true
vim.opt.autoread = true
vim.opt.mousemoveevent = true

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.view.adaptive_size = true
lvim.builtin.nvimtree.setup.view.width = { min = 30, max = 42 }

-- bufferline
lvim.builtin.bufferline.options.numbers = "ordinal"
lvim.builtin.bufferline.options.always_show_bufferline = true
lvim.builtin.bufferline.options.hover = { enabled = true, delay = 100, reveal = { 'close' } }
lvim.builtin.bufferline.options.show_close_icon = true
lvim.builtin.bufferline.options.tab_size = 18
lvim.builtin.bufferline.options.max_name_length = 28
lvim.builtin.bufferline.highlights.buffer_selected = {
  fg = 'yellow',
}

-- fold
vim.opt.foldmethod = "expr"
vim.opt.foldlevel = 99
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
