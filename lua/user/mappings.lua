local map = vim.keymap.set
map("i", "jj", "<ESC>", { desc = "Enter to normal mode" })

-- gopher
map("n", "<leader>gsj", "<cmd> GoAddTag json <CR>", { desc = "Golang add json tags" })
map("n", "<leader>gsrj", "<cmd> GoRmTag json <CR>", { desc = "Golang remove json tags" })
map("n", "<leader>gtf", "<cmd> GoAddTest <CR>", { desc = "Golang add test for current func" })

-- codeium
map("i", "<C-g>", function()
    return vim.fn["codeium#Accept"]()
end, { expr = true, desc = "Codeium Accept" })

-- if codeium chat released
--map("n", "<C-\\>", function()
--    return vim.fn["codeium#Chat()"]()
--end, { expr = true, desc = "Codeium chat" })