-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<space>.", ":<C-u>e ~/.config/nvim/lua/config/<CR>", { silent = true })
map("i", "<C-c>", "<Esc>:<C-u>w<CR>", { silent = true })
map("n", "<C-n>", ":<C-u>tabnext<CR>", { silent = true })
map("n", "<C-p>", ":<C-u>tabNext<CR>", { silent = true })

map("i", "<C-w>", "<BS>")
map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

vim.api.nvim_create_user_command("Ccwd", function()
  vim.cmd("lcd %:h")
end, {})

vim.api.nvim_create_user_command("Tncb", function()
  vim.cmd("tabnew %")
end, {})
