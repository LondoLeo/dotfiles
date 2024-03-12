

vim.g.mapleader = " "


local function surround2(symbol1, symbol2)
    -- Substitute Function: Select all characters currently highlighted (:s/\%V.*\%V./) 
    -- and enclose the matched string (&) in symbol1 and symbol2
    vim.cmd(":s/\\%V.*\\%V./" .. symbol1 .. "&" .. symbol2 .. "/")
    -- Escape visual mode
    vim.api.nvim_input('<Esc>')
    -- Return cursor to the end of the word
    vim.api.nvim_input('``el')
end

local function surround(symbol1, symbol2)
    vim.api.nvim_input('c' .. symbol1 .. symbol2 .. '<Esc>P')
end

vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

vim.keymap.set('n', "<leader>(", "ysiw(" )

vim.keymap.set('v', "<leader>[", "ysiw[")

vim.keymap.set('v', "<leader>{", "ysiw{")

vim.keymap.set('v', "<leader><", "ysiw<")

vim.keymap.set('v', "<leader>'", "ysiw'")

vim.keymap.set('v', "<leader>\"", "ysiw\"")

vim.keymap.set('v', "<leader>$", "ysiw$")

vim.keymap.set('t', '<Esc>',  '<C-\\><C-n>')

vim.keymap.set("n", "<C-,>", vim.cmd.bprev)
vim.keymap.set("n", "<C-.>", vim.cmd.bnext)
