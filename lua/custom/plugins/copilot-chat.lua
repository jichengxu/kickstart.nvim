return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  dependencies = {
    { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
    { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
  },
  opts = {
    -- lazy.nvim opts
    debug = true, -- Enable debugging
    window = {
      layout = 'float',
      relative = 'cursor',
      width = 1,
      height = 0.4,
      row = 1
    },
    mappings = {
      complete = {
        detail = 'Use @<Tab> or /<Tab> for options.',
        insert = '<Tab>',
        -- insert ='',
      },
      close = {
        normal = 'q',
        insert = '<C-c>'
      },
      reset = {
        normal = '<C-l>',
        insert = '<C-l>'
      },
      submit_prompt = {
        normal = '<CR>',
        insert = '<C-m>'
      },
      accept_diff = {
        normal = '<C-y>',
        insert = '<C-y>'
      },
      yank_diff = {
        normal = 'gy',
      },
      show_diff = {
        normal = 'gd'
      },
      show_system_prompt = {
        normal = 'gp'
      },
      show_user_selection = {
        normal = 'gs'
      },
    },
    -- See Configuration section for rest
  },
  keys = {
    -- lazy.nvim keys
    -- Quick chat with Copilot
    {
      "<leader>ccq",
      function()
        local input = vim.fn.input("Quick Chat: ")
        if input ~= "" then
          require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
        end
      end,
      desc = "CopilotChat - Quick chat",
    },

    -- Show help actions with telescope
    {
      "<leader>cch",
      function()
        local actions = require("CopilotChat.actions")
        require("CopilotChat.integrations.telescope").pick(actions.help_actions())
      end,
      desc = "CopilotChat - Help actions",
      mode = {'n','v'}, -- This will apply the mapping in both normal and visual mode
    },
    -- Show prompts actions with telescope
    {
      "<leader>ccp",
      function()
        local actions = require("CopilotChat.actions")
        require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
      end,
      desc = "CopilotChat - Prompt actions",
      mode = {'n','v'}, -- This will apply the mapping in both normal and visual mode
    },

    {
      "<leader>ccq",
      function()
        local input = vim.fn.input("Quick Chat: ")
        if input ~= "" then
          require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
        end
      end,
      desc = "CopilotChat - Quick chat",
    },
    {
      "<leader>cp",
      function()
        require("CopilotChat").toggle()
      end,
      desc = 'Copilot chat',
      mode = {'n','v'}, -- This will apply the mapping in both normal and visual mode
    }
  }
}
