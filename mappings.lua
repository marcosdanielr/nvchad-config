require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<A-k>", ":m .-2<CR>==")
map({ "n", "i", "v" }, "<A-j>", ":m .+1<CR>==")
