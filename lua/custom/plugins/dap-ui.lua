return {
  "rcarriga/nvim-dap-ui",
  config = function()
    require("dapui").setup()
  end,
  dependencies =
  { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  keys = {
    {
      "<leader>du",
      function ()
        require("dapui").toggle()
      end,
      desc = "[D]ebug [U]I",
      mode={'n'},
    },
  }
}
