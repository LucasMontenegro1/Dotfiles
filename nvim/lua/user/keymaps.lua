vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<BS>', '"_x', { noremap = true })
vim.api.nvim_set_keymap('v', '<BS>', '"_x', { noremap = true })
