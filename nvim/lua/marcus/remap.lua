

vim.g.mapleader = " "


vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

vim.keymap.set('t', '<Esc>',  '<C-\\><C-n>')

vim.keymap.set("n", "<C-,>", vim.cmd.bprev)
vim.keymap.set("n", "<C-.>", vim.cmd.bnext)


vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
