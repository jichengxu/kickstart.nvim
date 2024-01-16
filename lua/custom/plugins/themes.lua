return {
  "catppuccin/nvim",
  config = function()
    require("catppuccin").setup({
      integrations = {
        nvimtree = true,
        treesitter = true,
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
          colored_indent_levels = false
        }
      },
    })
  end,
  name = "catppuccin",
  priority = 1000
}

