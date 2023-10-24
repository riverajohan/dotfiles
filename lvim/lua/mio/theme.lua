local material = require 'material'

-- lvim.colorscheme = "tokyonight-moon"
lvim.colorscheme = "material"
vim.g.material_style = "palenight"

require('material').setup({

  styles = { -- Give comments style such as bold, italic, underline etc.
    comments = { italic = true },
    strings = { bold = true },
    keywords = { underline = true },
    functions = { bold = true, italic = true },
    variables = {},
    operators = { italic = true },
    types = { italic = true },
  },

  plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "dap",
    -- "dashboard",
    -- "eyeliner",
    -- "fidget"
    -- "flash"
    -- "gitsigns",
    -- "harpoon",
    -- "hop",
    -- "illuminate",
    -- "indent-blankline",
    -- "lspsaga",
    -- "mini",
    -- "neogit",
    -- "neotest",
    -- "neorg",
    -- "noice"
    -- "nvim-cmp",
    -- "nvim-navic",
    -- "nvim-tree",
    -- "nvim-web-devicons",
    -- "rainbow-delimiters",
    -- "sneak",
    -- "telescope",
    -- "trouble",
    -- "which-key",
  },

  disable = {
    colored_cursor = false, -- Disable the colored cursor
    borders = false,        -- Disable borders between verticaly split windows
    background = false,     -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
    term_colors = false,    -- Prevent the theme from setting terminal colors
    eob_lines = false       -- Hide the end-of-buffer lines
  },

  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = false   -- Enable higher contrast text for darker style
  },

  lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

  async_loading = true,      -- Load parts of the theme asyncronously for faster startup (turned on by default)

  custom_colors = nil,       -- If you want to override the default colors, set this to a function

  custom_highlights = {},    -- Overwrite highlights with your own
})
