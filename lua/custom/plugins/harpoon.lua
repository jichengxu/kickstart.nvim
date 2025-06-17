return {
  'ThePrimeagen/harpoon',
  event = 'VeryLazy',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'telescope.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {
      settings = {
        sync_on_ui_close = true,
      },
    }
    local harpoon_extensions = require 'harpoon.extensions'
    harpoon:extend(harpoon_extensions.builtins.highlight_current_file())
    harpoon:extend(harpoon_extensions.builtins.navigate_with_number())
  end,
  keys = {
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = '[H]arpoon [A]dd file',
      mode = { 'n' },
    },
    {
      '<leader>hh',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = '[H]arpoon [H]ide/Show menu',
      mode = { 'n' },
    },
    {
      '<leader>h1',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = '[H]arpoon [1]',
      mode = { 'n' },
    },
    {
      '<leader>h2',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = '[H]arpoon [2]',
      mode = { 'n' },
    },
    {
      '<leader>h3',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = '[H]arpoon [3]',
      mode = { 'n' },
    },
    {
      '<leader>h4',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = '[H]arpoon [4]',
      mode = { 'n' },
    },
    {
      '<leader>sm',
      function()
        local conf = require('telescope.config').values
        local function toggle_telescope(harpoon_files)
          local file_paths = {}
          for _, item in ipairs(harpoon_files.items) do
            table.insert(file_paths, item.value)
          end

          require('telescope.pickers')
            .new({}, {
              prompt_title = 'Harpoon',
              finder = require('telescope.finders').new_table {
                results = file_paths,
              },
              previewer = conf.file_previewer {},
              sorter = conf.generic_sorter {},
            })
            :find()
        end
        -- Toggle Harpoon with Telescope
        local harpoon = require 'harpoon'
        toggle_telescope(harpoon:list())
      end,
      desc = '[H]arpoon [',
    },
  },
}
