-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set
set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
set("n", "<leader>o", "o<Esc>", { desc = "New line below (normal mode)" })
set("n", "<leader>O", "O<Esc>", { desc = "New line above (normal mode)" })
set("n", "<leader>a", function()
  vim.cmd("normal! ggVG")
end, { desc = "Select all" })
set("n", "<leader>h", "<C-w>h", { desc = "Go to Left Window" })
set("n", "<leader>j", "<C-w>j", { desc = "Go to Lower Window" })
set("n", "<leader>k", "<C-w>k", { desc = "Go to Upper Window" })
set("n", "<leader>l", "<C-w>l", { desc = "Go to Right Window" })
