-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'tpope/vim-fugitive',
    dependencies = { -- optional packages
      'tpope/vim-rhubarb',
      'shumphrey/fugitive-gitlab.vim',
    },
    config = function()
      vim.g.fugitive_gitlab_domains = { 'https://git.mc-monitoring.com' }
    end,
  },
}

-- let g:fugitive_gitlab_domains = {'git.mc-monitoring.com': 'https://git.mc-monitoring.com'}
