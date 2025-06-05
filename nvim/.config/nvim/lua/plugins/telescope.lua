return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        pickers = {
          live_grep = {
            file_ignore_patterns = { "node_modules", ".git", ".venv" },
            additional_args = function(_)
              return { "--hidden" }
            end,
          },
          find_files = {
            file_ignore_patterns = { "node_modules", ".git", ".venv" },
            hidden = true,
          },
        },
        extensions = {
          "fzf",
        },
      })

      require("telescope").load_extension("fzf")

      vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fc", require("telescope.builtin").git_commits, { desc = "Git commits" })
      vim.keymap.set(
        "n",
        "<leader>fh",
        require("telescope.builtin").current_buffer_fuzzy_find,
        { desc = "Search current buffer" }
      )
      vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "Git commits" })
    end,
  },
}
