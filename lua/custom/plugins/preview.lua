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
  -- OPTIM: I will migrate to peek.nvim, but I didn't find the toggle function.
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    keys = {
      {
        '<leader>pm',
        '<cmd>MarkdownPreviewToggle<cr>',
        desc = '[P]review [M]ardwon Toggle',
      },
    },
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
  -- OPTIM: I should add the key shortcuts, otherwise this plugin seems amazing
  -- TODO: Adding key shortcuts
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup()
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
}
