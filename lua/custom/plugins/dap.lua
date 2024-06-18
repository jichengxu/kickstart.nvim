return {
  "mfussenegger/nvim-dap",
  config = function()
    require('dap.ext.vscode').json_decode = require'json5'.parse
    require('dap.ext.vscode').load_launchjs(nil,
      { debugpy = {'python'} }
    )
  end,
  dependencies = {
    'mfussenegger/nvim-dap-python',
    'Joakker/lua-json5',
  },
  version = "*",
  priority = 1000,
  keys = {
    {
      "<leader>bb",
      function ()
        require("dap").toggle_breakpoint()
      end,
      desc = "[D]ebug [B]reakpoint",
      mode={'n'},
    },
    {
      "<leader>dc",
      function ()
        require("dap").continue()
      end,
      desc = "[D]ebug [C]ontinue",
      mode={'n'},
    },
    {
      "<leader>di",
      function ()
        require("dap").step_into()
      end,
      desc = "[D]ebug step [I]nto",
      mode={'n'},
    },
    {
      "<leader>dn",
      function ()
        require("dap").step_over()
      end,
      desc = "[D]ebug step [N]ext",
      mode={'n'},
    },
    {
      "<leader>do",
      function ()
        require("dap").step_out()
      end,
      desc = "[D]ebug step [O]ut",
      mode={'n'},
    },
    {
      "<leader>dl",
      function ()
        require("dap").run_last()
      end,
      desc = "[D]ebug [L]ast configuration",
      mode={'n'},
    },
  }
}
