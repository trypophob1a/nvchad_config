local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = {
      "goimports-reviser",
      "gofumpt",
      "gomodifytags",
      "goimports",
    },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

   format_on_save = {
     -- These options will be passed to conform.format()
     timeout_ms = 500,
     lsp_fallback = true,
   },
}
-- Добавляем автокоманду для выполнения :GoFmt после форматирования файлов Go

-- vim.api.nvim_exec([[
--  augroup go_fmt_and_import
--    autocmd!
--    autocmd BufWritePost *.go GoImports
--  augroup END
-- ]], false)

require("conform").setup(options)
