
local builtin = require('telescope.builtin')



-- telescope mappings
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



-- Keybinds to help with split navigation
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight text that is being copied 
--
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function() require('harpoon.mark').add_file() end)
vim.keymap.set("n", "<C-e>", function() require('harpoon.ui').toggle_quick_menu() end)

vim.keymap.set("n", "<C-j>", function() require('harpoon.ui').nav_next() end)
vim.keymap.set("n", "<C-k>", function() require('harpoon.ui').nav_prev() end)

vim.keymap.set("n", "<C-h>", function() require('harpoon.ui').nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() require('harpoon.ui').nav_file(2) end)



-- things that I like
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")

