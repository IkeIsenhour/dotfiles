return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      -- define keymaps before plugin loads
      vim.g.VM_maps = {
        ["Add Cursor Down"] = "<leader>m",
      }
    end,
  },
}
