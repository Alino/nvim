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

local opts = { noremap = true, expr = true, silent = true }
-- because or opts.expr we gotta return something
vim.keymap.set("i", "<Tab>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    return vim.fn["coc#pum#next"](1)
  --elseif vim.fn["coc#expandableOrJumpable"]() then
    --return "<Plug>(coc-snippets-expand-jump)"
  else
    return "<C-i>"
  end
end, opts)

vim.keymap.set("i", "<S-Tab>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    return vim.fn["coc#pum#prev"](1)
  elseif vim.fn["coc#jumpable"]() then
    return vim.fn["coc#snippet#prev"]() --> this turns into <Ignore> when the keymap runs
  elseif vim.fn.indent(vim.fn.line(".")) == vim.fn.col(".") - 1 then
    return "<C-d>"
  else
    return "<C-w>"
  end
end, opts)

vim.keymap.set("i", "<CR>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    return vim.fn["coc#pum#confirm"]()
  else
    return "<CR>"
  end
end, opts)

-- This might be useful since some snippets sometimes add text before the
-- cursor and that might influence completion
vim.keymap.set("i", "<C-Space>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    vim.fn["coc#pum#close"]()
  else
    vim.fn["coc#start"]()
  end
end, { noremap = true, silent = true })
