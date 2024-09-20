return {}
--[[ return {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "nvimtools/none-ls.nvim",
    },
    config = function(_, opts)
        local nls = require("null-ls")
        opts.sources = vim.list_extend(opts.sources, {
            nls.builtins.formatting.black,
        })
        require("mason-null-ls").setup({
            ensure_installed = { "black" },
        })
    end,
} ]]
