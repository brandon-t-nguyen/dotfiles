-- My personal LSP configurations
-- Takes advantage of nvim-lspconfig
vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('pylsp')

-- Fix code issues via code action
vim.keymap.set('n', '<C-Space>', vim.lsp.buf.code_action);
