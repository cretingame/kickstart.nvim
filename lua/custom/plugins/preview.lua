return {
  {
    'ngtuonghy/live-server-nvim',
    event = 'VeryLazy',
    build = ':LiveServerInstall',
    config = function()
      require('live-server-nvim').setup {}
    end,
    ft = { 'html' },
    keys = {
      {
        '<leader>ph',
        function()
          require('live-server-nvim').toggle()
        end,
        desc = '[P]review [H]TML toggle (live server)',
      },
    },
  },
  -- NOTE: peek.nvim needs deno as dependency
  -- I installed with this command:
  -- `npm install -g deno`
  -- Following this documentation
  -- https://docs.deno.com/runtime/getting_started/installation/
  -- TESTING: I need to test how peek.nvim deal with mermaid.js
  -- WARN: I got errors in log because of `DENO_ENV` is not set
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup()
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
    app = { 'chromium', '--new-window' },
    ft = { 'markdown' },
    keys = {
      {
        '<leader>pm',
        function()
          local peek = require 'peek'
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = '[P]review [M]ardwon Toggle',
      },
      {
        '<leader>po',
        function()
          local peek = require 'peek'
          peek.open()
        end,
        desc = 'Preview Mardwon [O]pen',
      },
      {
        '<leader>pc',
        function()
          local peek = require 'peek'
          peek.close()
        end,
        desc = 'Preview Mardwon [C]lose',
      },
    },
  },
}
