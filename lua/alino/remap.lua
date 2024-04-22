vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)


-- Remap Ctrl+A to go to the beginning of the line in normal mode
vim.keymap.set({"n"}, "<C-a>", "0")

-- Remap Ctrl+E to go to the end of the line in normal mode
vim.keymap.set({"n"}, "<C-e>", "$")

-- Remap Ctrl+A to go to the beginning of the line in insert mode
vim.keymap.set("i", "<C-a>", "<Esc>^i", {noremap = true})

-- Remap Ctrl+E to go to the end of the line in insert mode
vim.keymap.set("i", "<C-e>", "<Esc>$a", {noremap = true})

-- Use IJKL for navigation instead of HJKL
-- vim.api.nvim_set_keymap('n', 'i', 'k', {noremap = true})
-- vim.api.nvim_set_keymap('n', 'j', 'h', {noremap = true})
-- vim.api.nvim_set_keymap('n', 'k', 'j', {noremap = true})
-- vim.api.nvim_set_keymap('n', 'l', 'l', {noremap = true})  -- Not needed as 'l' remains the same

-- Use H for insert instead of I
-- vim.api.nvim_set_keymap('n', 'h', 'i', {noremap = true})


