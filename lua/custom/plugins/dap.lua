return {
  "mfussenegger/nvim-dap",
  config = function()
  -- Keybindings
    vim.keymap.set('n', '<leader>',require("dap").toggle_breakpoint, { desc = '[D]ebug [B]reakpoint' })
    -- require('dap.ext.vscode').json_decode = require('json5').parse
  end,
  dependencies = {
    "mfussenegger/nvim-dap-python",
    "Joakker/lua-json5",
  },
  version = "*",
  priority = 1000
}
