local dap = require("dap")
local mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")

local continue = function()
  if vim.fn.filereadable('.vscode/launch.json') then
    require('dap.ext.vscode').load_launchjs()
  end
  dap.continue()
end
lvim.lsp.buffer_mappings.normal_mode["<leader>dc"] = { continue, "Start/Continue debug" }


-- ------------------------
-- PHP
------------------------
dap.adapters.php = {
  type = "executable",
  command = "node",
  args = { mason_path .. "packages/php-debug-adapter/extension/out/phpDebug.js" },
}
