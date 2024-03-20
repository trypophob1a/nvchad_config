local S = {}

function S.treesitter_status()
    local active = vim.treesitter.highlighter.active[vim.api.nvim_get_current_buf()] and "ON" or "OFF"
    return "TS: " .. active
end

function S.codeium_status()
    local status = vim.fn["codeium#GetStatusString"]()
    print("Codeium Status:", status)
    if status == " ON" then
        return "{}"
    else
        return status
    end
end

return S