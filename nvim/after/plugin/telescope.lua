local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})

vim.keymap.set('n', '<leader>db', builtin.buffers, {})
vim.keymap.set('n', '<leader>do', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>dm', builtin.marks, {})
vim.keymap.set('n', '<leader>dj', builtin.jumplist, {})
--vim.keymap.set('n', '<leader>sg', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") });
--end)
