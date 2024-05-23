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

map("i", "<M-\\>", function()
  return vim.fn["codeium#Complete"]()
end, { expr = true, desc = "Manually trigger suggestion" })

map({ "n", "i", "v" }, "<C-\\>", function()
  return vim.fn["codeium#Chat"]()
end, { expr = true, desc = "Codeium Chat open" })

-- Добавление точки останова
map(
  "n",
  "<leader>db",
  "<cmd>DapToggleBreakpoint<CR>",
  { desc = "Добавить точку останова на строке" }
)

-- Открытие панели отладки
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Открыть панель отладки" })

-- Дебаггинг Go тестов
map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "Дебаггинг Go тестов" })

-- Дебаггинг последнего Go теста
map("n", "<leader>dgl", function()
  require("dap-go").debug_last()
end, { desc = "Дебаггинг последнего Go теста" })
