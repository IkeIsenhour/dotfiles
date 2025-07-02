local opt = vim.opt

-- line
opt.number = true
opt.wrap = false
opt.cursorline = true

-- tabs & indentation
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- windows
opt.splitright = true
opt.splitbelow = true

-- general
opt.clipboard = "unnamedplus"
opt.backspace = "indent,eol,start"

vim.api.nvim_create_autocmd("FileType", { -- "z= keybind"
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true -- Enable spell checking locally
    vim.opt_local.spelllang = "en_us" -- Set spell language to US English (adjust as needed)
  end,
})

-- theme
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
