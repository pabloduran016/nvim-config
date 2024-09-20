vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.html" },
    command = "call jinja#AdjustFiletype()",
})
