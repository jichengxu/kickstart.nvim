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
  vim.keymap.set("n", "<Tab>", ":bnext<cr>")
  vim.keymap.set("n", "<S-Tab>", ":bprevious<cr>")
  vim.keymap.set('n', '<leader>bx',":bdelete<cr>", { desc = 'Exit buffer' })
  end,
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  priority = 1000
}
