print("running init.lua")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")

require("core.autocmds")

require("lazy")
