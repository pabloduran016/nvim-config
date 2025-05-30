vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'lazy-bootstrap'

require 'lazy-plugins'

require 'options'

require 'keymaps'

require 'lsp-setup'

-- Run init.lua in cwd
-- Check if init.lua exists and run it
if vim.fn.getcwd() ~= vim.fn.stdpath("config") then
    local init_path = vim.fn.getcwd() .. '/init.lua'

    if vim.fn.filereadable(init_path) == 1 then
        vim.cmd('luafile ' .. init_path)
        print("Running `" .. init_path .. "`")
    end
end
