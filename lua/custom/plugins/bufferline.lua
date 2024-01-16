return {
  "akinsho/bufferline.nvim",
  config = function()
    local bufferline = require('bufferline')
    require("bufferline").setup({
      options = {
        hover = {
          enabled = false,
          delay = 200,
          reveal = { 'close' }
        },
        separator_style = "slant",
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.no_bold
        },
      }

    })
  -- Keybindings
  vim.keymap.set("n", "<tab>", ":bNext<cr>")
  vim.keymap.set("n", "<s-tab>", ":bprevious<cr>")
  vim.keymap.set('n', '<leader>bx',":bdelete<cr>", { desc = 'Exit buffer' })
  vim.keymap.set('n', '<leader>bx',":bdelete<cr>", { desc = '' })
  end,
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  priority = 1000
}
