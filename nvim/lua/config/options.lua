-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.print("Hello World")

-- LazyVim
vim.g.autoformat = false

vim.opt.swapfile = false
vim.opt.clipboard = "unnamed"

-- g:clipboard の Lua 版
vim.g.clipboard = {
  name = "myClipboard",
  copy = {
    ["+"] = "win32yank.exe -i",
    ["*"] = "win32yank.exe -i",
  },
  paste = {
    ["+"] = "win32yank.exe -o",
    ["*"] = "win32yank.exe -o",
  },
  cache_enabled = 1,
}

