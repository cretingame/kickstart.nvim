return {
  {
    'barrett-ruth/live-server.nvim',
    keys = {
      {
        '<leader>po',
        function()
          require('live-server').start()
        end,
        desc = '[P]review [O]pen (live server)',
      },
      {
        '<leader>pc',
        function()
          require('live-server').stop()
        end,
        desc = '[P]review [C]lose (live server)',
      },
      {
        '<leader>ph',
        function()
          require('live-server').toggle()
        end,
        desc = '[P]review [H]TML toggle (live server)',
      },
    },
    build = 'pnpm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true,
    ft = { 'html' },
  },
  -- NOTE: I'm using peek.nvim instead of this plugin
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    -- keys = {
    --   {
    --     '<leader>pm',
    --     '<cmd>MarkdownPreviewToggle<cr>',
    --     desc = '[P]review [M]ardwon Toggle',
    --   },
    -- },
    config = function()
      vim.fn['mkdp#util#install']()
    end,
    ft = { 'markdown' },
  },

  -- NOTE: peek.nvim needs deno as dependency
  -- I installed with this command:
  -- `npm install -g deno`
  -- Following this documentation
  -- https://docs.deno.com/runtime/getting_started/installation/
  -- TESTING: I need to test how peek.nvim deal with mermaid.js
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup()
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
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
    },
  },
}
