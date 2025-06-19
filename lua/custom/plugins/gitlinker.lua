return {
  'ruifm/gitlinker.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    require('gitlinker').setup {
      mappings = nil, -- disable default mappings
      copy_to_clipboard = true,
      action_callback = require('gitlinker.actions').open_in_browser,
    }
  end,
  keys = {
    {
      '<leader>gl',
      function()
        require('gitlinker').get_buf_range_url('n', { action_callback = require('gitlinker.actions').open_in_browser })
      end,
      desc = '[G]it [L]inker',
    },
    {
      '<leader>gL',
      function()
        require('gitlinker').get_buf_range_url('n', { action_callback = require('gitlinker.actions').copy_to_clipboard })
      end,
      desc = '[G]it [L]inker copy to clipboard',
    },
  },
}
