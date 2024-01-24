return {
  "ThePrimeagen/harpoon",
  config = function()
  -- Keybindings
    vim.keymap.set('n', '<leader>hq',require("harpoon.ui").toggle_quick_menu, { desc = '[Q]uick Menu' })
    vim.keymap.set('n', '<leader>hm',require("harpoon.mark").add_file, { desc = '[M]ark file' })
  end,
  version = "*",
  dependencies = 'nvim-lua/plenary.nvim',
  priority = 1000
}
