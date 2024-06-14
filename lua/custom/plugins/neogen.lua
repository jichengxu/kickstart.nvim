return {
  "danymat/neogen",
  config = function()
    require("neogen").setup({
      config=true,
      snippet_engine = "luasnip"
    })
  -- Keybindings
  end,
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  priority = 1000
}
