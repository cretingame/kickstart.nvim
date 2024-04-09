-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
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
}
