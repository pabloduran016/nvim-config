return {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
        vim.cmd.colorscheme 'onedark'
        -- vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = 'none' })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        -- vim.api.nvim_set_hl(0, "NonText", { bg = "none", ctermbg = 'none' })
    end,
}
