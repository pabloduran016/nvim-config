vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for explorer
vim.keymap.set('n', '-', "<cmd>Oil<CR>", { desc = 'Go to Explorer' })

-- Remap to open GIT menu in fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = 'Open [G]it [S]tatus' })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>ed', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>qd', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


-- Move lines up or down in any visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy line in this line separated by space and keep cursor where it was
-- vim.keymap.set("n", "J", "mzJ`z")

-- Move mid page up and down but mantain cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle of the screen while looking through search results + expand folds
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep cursor in the middle of the screen while going thourgh cursor history
vim.keymap.set("n", "<C-O>", "<C-O>zz")
vim.keymap.set("n", "<C-I>", "<C-I>zz")

-- Keep cursor in the middle of the screen while looking through search results + expand folds
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever : Space+P to paste into computer buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland : Space+y to copy into computer buffer
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Space+d to delete into computer buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- For some reason Q is scary
vim.keymap.set("n", "Q", "<nop>")

-- TODO: Look into this
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Motions through error messages
vim.keymap.set("n", "[q", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "]q", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "]l", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "[l", "<cmd>lnext<CR>zz")

-- TODO: Maybe interesting, but we use <leader>s for telecope incremental selection
-- This is like refactoring
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/I<Left><Left><Left>]])

-- Create executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>so", "<cmd>so<CR>")

vim.keymap.set("n", "<leader>nc", function() require("oil").open("~/.config/nvim/") end,
  { desc = "Open [n]vim [c]onfig directory in explorer" })
vim.keymap.set("n", "<leader>nt", function() vim.cmd.edit("~/.config/nvim/TODO.md") end,
  { desc = "Open [n]vim [T]ODO file" })
-- vim: ts=2 sts=2 sw=2 et
