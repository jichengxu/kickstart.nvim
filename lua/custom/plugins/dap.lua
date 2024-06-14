return {
  "mfussenegger/nvim-dap",
  config = function()
  -- Keybindings
    vim.keymap.set('n', '<leader>bb', require("dap").toggle_breakpoint, { desc = '[D]ebug [B]reakpoint' })
    require('dap.ext.vscode').load_launchjs('~/echostat/.vscode/launch.json')
  end,
  dependencies = {
    'mfussenegger/nvim-dap-python',
    'Joakker/lua-json5',
  },
  version = "*",
  priority = 1000
}
