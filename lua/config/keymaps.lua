-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Switch buffers with <shift> hl
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")

-- gitui instead of lazygit
vim.keymap.set("n", "<leader>gg", function() require("lazyvim.util").float_term({ "gitui" }) end, { desc = "gitui (cwd)" })
vim.keymap.set("n", "<leader>gG", function() util.float_term({ "gitui" }, { cwd = util.get_root() }) end, { desc = "gitui (root dir)" })