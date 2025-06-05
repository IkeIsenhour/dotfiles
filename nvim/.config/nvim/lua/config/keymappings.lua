--- LEADER ---
vim.g.mapleader = " "

--- CREATE KEYMAPPINGS ---

-- General
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>s", ":source $HOME/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>q", ":qa<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Code
vim.keymap.set("n", "<leader>gi", ":lua vim.lsp.buf.implementation()<CR>", { desc = "Go to Implementations" })
vim.keymap.set("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>", { desc = "Go to References" })
vim.keymap.set("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definitions" })
vim.keymap.set("n", "<leader>gu", ":lua vim.lsp.buf.declaration()<CR>", { desc = "Go to Declarations" })
vim.keymap.set("n", "<leader>gb", "<C-o>", { desc = "Go back" })

-- Buffer Navigation
vim.keymap.set("n", "<leader>tn", ":bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>tp", ":bprevious<cr>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>tc", ":bd<cr>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>tb", ":buffer #<cr>", { desc = "Last Buffer" })

-- Split Navigation
vim.keymap.set("n", "<leader>spv", ":vsplit<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>sph", ":split<CR>", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>spc", "<C-w>c", { desc = "Close Split" })
vim.keymap.set("n", "<leader>spo", "<C-w>o", { desc = "Close OtherSplits" })
vim.keymap.set("n", "<leader>sp=", ":vertical resize +20<CR>", { desc = "Increase Size of Split" })
vim.keymap.set("n", "<leader>sp-", ":vertical resize -20<CR>", { desc = "Increase Size of Split" })

-- Nvim-Tmux
vim.keymap.set("n", "<C-h>", ":NvimTmuxNavigateLeft<CR>", { desc = "Navigate to the Left Pane" })
vim.keymap.set("n", "<C-l>", ":NvimTmuxNavigateRight<CR>", { desc = "Navigate to the Right Pane" })
vim.keymap.set("n", "<C-j>", ":NvimTmuxNavigateDown<CR>", { desc = "Navigate to the Bottom Pane" })
vim.keymap.set("n", "<C-k>", ":NvimTmuxNavigateUp<CR>", { desc = "Navigate to the Top Pane" })

-- Diffview
vim.api.nvim_set_keymap("n", "<leader>dvo", ":DiffviewOpen<CR>", { desc = "Open Diffview" })
vim.api.nvim_set_keymap("n", "<leader>dvc", ":DiffviewClose<CR>", { desc = "Close Diffview" })
vim.api.nvim_set_keymap("n", "<leader>dvh", ":DiffviewFileHistory<CR>", { desc = "Diffview branch history" })
vim.api.nvim_set_keymap("n", "<leader>dvf", ":DiffviewFileHistory %<CR>", { desc = "Diffview file history" })
vim.api.nvim_set_keymap(
  "n",
  "<leader>dvm",
  ":DiffviewOpen origin/main...HEAD<CR>",
  { desc = "Diffview Main Against Checked Out Feature Branch" }
)

-- Csvview
vim.keymap.set("n", "<leader>csv", ":CsvViewToggle<CR>", { desc = "Toggle Csvview" })

---OVERWRITE EXISTING KEYMAPS---

-- Comment Plugin
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", { desc = "Toggle Comment" })
vim.api.nvim_set_keymap("v", "<leader>/", "gc", { desc = "Toggle Comment Region" })
