-- My personal LSP configurations
-- Takes advantage of nvim-lspconfig
require'lspconfig'.clangd.setup{}
require'lspconfig'.rust_analyzer.setup{}

-- Fix code issues via code action
vim.keymap.set('n', '<C-Space>', vim.lsp.buf.code_action);
