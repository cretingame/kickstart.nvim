vim.pack.add {
  { src = 'https://github.com/ray-x/go.nvim' },
  { src = 'https://github.com/ray-x/guihua.lua' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  -- { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
}

require('go').setup {
  -- lsp_keymaps = false,
  -- other options
}

