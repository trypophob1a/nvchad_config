---@type ChadrcConfig
local M = {}
M.ui = {
    theme = "kanagawa",
    statusline = {
        order = {
            "mode", "file", "git",
            "%=", "lsp_msg", "%=",
            "diagnostics", "codeium_status",
            "treesitter_status", "lsp", "cwd",
            "cursor"
        },
        modules = {
            vim.cmd("highlight MyModulesStatus guifg=#00ff00 guibg=NONE gui=bold"),
            codeium_status = function()
                local status = vim.fn["codeium#GetStatusString"]()
                if status == " ON" then
                    return "%#MyModulesStatus#󰘦 %*"
                end
                return ""
            end,
            treesitter_status = function()
                local active = vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] and "" or ""
                return  "%#MyModulesStatus#" ..active.."%*"
            end,
        }
    },
}

return M
