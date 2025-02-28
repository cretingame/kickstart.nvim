return {
  {
    'ray-x/go.nvim',
    dependencies = { -- optional packages
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('go').setup {
        remap_commands = { GoDoc = false }, -- Vim commands to remap or disable, e.g. `{ GoFmt = "GoFormat", GoDoc = false }`
      }
    end,
    event = { 'CmdlineEnter' },
    ft = { 'go', 'gomod' },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  {
    'fredrikaverpil/godoc.nvim',
    version = '*',
    dependencies = {
      { 'nvim-telescope/telescope.nvim' }, -- optional
      -- { 'folke/snacks.nvim' }, -- optional
      -- { 'echasnovski/mini.pick' }, -- optional
      -- { 'ibhagwan/fzf-lua' }, -- optional
      {
        'nvim-treesitter/nvim-treesitter',
        opts = {
          ensure_installed = { 'go' },
        },
      },
    },
    build = 'go install github.com/lotusirous/gostdsym/stdsym@latest', -- optional
    cmd = { 'GoDoc' }, -- optional
    opts = {
      picker = {
        type = 'telescope',
      },
    },
  },
}
