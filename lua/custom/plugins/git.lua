vim.pack.add({
  { src = 'https://github.com/tpope/vim-fugitive' },
  { src = 'https://github.com/tpope/vim-rhubarb' },
  { src = 'https://github.com/shumphrey/fugitive-gitlab.vim' },
})

vim.g.fugitive_gitlab_domains = {
  'https://git.mc-monitoring.com',
}
