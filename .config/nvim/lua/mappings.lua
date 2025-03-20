require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mkdp_browser = 'zen-browser'

vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
