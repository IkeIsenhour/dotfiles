-- command to print current config: lua print(vim.inspect(vim.diagnostic.config()))

vim.diagnostic.config({
  float = true,
  severity_sort = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  virtual_text = true,
})
