-- sudo apt install blueprint-compiler
vim.lsp.config("blueprint_ls", {
  cmd = { "blueprint-compiler", "lsp" },
  filetypes = { "blueprint" },
  root_markers = { "meson.build", ".git" },
})

-- Start it automatically
vim.lsp.enable("blueprint_ls")

-- vim.api.nvim_create_autocmd("User", {
--   pattern = "TSUpdate",
--   callback = function()
--     require("nvim-treesitter.parsers").blueprint = {
--       install_info = {
--         url = "https://gitlab.com/gabmus/tree-sitter-blueprint",
--         branch = "main",
--       },
--     }
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "blueprint",
--   callback = function() vim.treesitter.start() end,
-- })
