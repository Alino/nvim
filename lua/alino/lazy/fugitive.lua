return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

        local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWinEnter", {
            group = ThePrimeagen_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = {buffer = bufnr, remap = false}
                vim.keymap.set("n", "<leader>p", function()
                    vim.cmd.Git('push')
                end, opts)

            end,
        })


--        vim.keymap.set("n", "gf", "<cmd>diffget //2<CR>")
--        vim.keymap.set("n", "gj", "<cmd>diffget //3<CR>")
        vim.keymap.set("n", "gu", "<cmd>diffget<CR>")  -- Get changes from the other file
        vim.keymap.set("n", "gh", "<cmd>diffput<CR>")  -- Put changes to the other file
        vim.keymap.set("n", "gv", function() vim.cmd("Gvdiff") end)
    end
}
