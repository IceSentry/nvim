-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- TODO use better-escape plugin
-- vim.keymap.set("i", "jk", function()
--     print("wot")
--     return "<ESC>"
-- end, { desc = "Exit insert mode with jk" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  This is currently handled by the Navigator plugin
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set({ 'n', 't' }, '<C-h>', '<cmd>NavigatorLeft<cr>')
vim.keymap.set({ 'n', 't' }, '<C-l>', '<cmd>NavigatorRight<cr>')
vim.keymap.set({ 'n', 't' }, '<C-k>', '<CMD>NavigatorUp<CR>')
vim.keymap.set({ 'n', 't' }, '<C-j>', '<CMD>NavigatorDown<CR>')
vim.keymap.set({ 'n', 't' }, '<C-p>', '<CMD>NavigatorPrevious<CR>')

vim.keymap.set('n', '<C-s>', '<cmd>:w<cr>', { desc = 'Save the file' })
vim.keymap.set({ 'i', 'v' }, '<C-s>', '<Esc><cmd>:w<cr>', { desc = 'Save the file' })

-- Make delete actions not yank anything
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'dd', '"_dd')
vim.keymap.set({ 'n', 'v' }, 'D', '"_D')
vim.keymap.set({ 'n', 'v' }, 'x', '"_x')
vim.keymap.set({ 'n', 'v' }, 'X', '"_X')
vim.keymap.set({ 'n', 'v' }, 's', '"_s')
vim.keymap.set({ 'n', 'v' }, 'S', '"_S')
vim.keymap.set({ 'n', 'v' }, 'c', '"_c')
vim.keymap.set({ 'n', 'v' }, 'C', '"_C')
vim.keymap.set({ 'n', 'v' }, 'C', '"_C')

-- Use x to cut
vim.keymap.set({ 'n', 'v' }, 'x', 'd')
vim.keymap.set({ 'n', 'v' }, 'xx', 'dd')
vim.keymap.set({ 'n', 'v' }, 'X', 'D')
if vim.g.vscode then
  vim.keymap.set({ 'n', 'v' }, '<leader>t', function()
    print 'toggle term'
    require('vscode').action 'workbench.action.terminal.toggleTerminal'
  end)
end
return {}
