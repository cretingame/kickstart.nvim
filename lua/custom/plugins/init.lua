-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'barrett-ruth/live-server.nvim',
    keys = {
      {
        '<leader>p',
        function()
          require('live-server').start()
        end,
        desc = 'live server start',
      },
      {
        '<leader>x',
        function()
          require('live-server').stop()
        end,
        desc = 'live server stop',
      },
    },
    build = 'pnpm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true,
  },
}
