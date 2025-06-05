return {
  {
    "stevearc/conform.nvim",
    opts = {},

    config = function()
      require("conform").setup({
        formatters = {
          stylua = {
            prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
          },
          ["html-beautify"] = {
            command = "html-beautify", -- The command to use (ensure it's installed globally)
            args = {
              "--indent-size",
              "2", -- Example argument, adjust to your needs
              "--wrap-line-length",
              "80",
            },
          },
        },
        formatters_by_ft = {
          zsh = { "beautysh" },
          bash = { "beautysh" },
          sh = { "beautysh" },
          python = { "black" },
          proto = { "buf" },
          go = { "gofmt" },
          ocaml = { "ocamlformat" },
          html = { "html-beautify" },
          css = { "prettier" },
          typescript = { "prettier" },
          javascript = { "prettier" },
          markdown = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          graphql = { "prettier" },
          jsx = { "prettier" },
          sql = { "sql_formatter" },
          lua = { "stylua" },
        },
        format_on_save = {
          enabled = true,
          pattern = { "*" },
          lsp_fallback = true,
        },
      })
    end,
  },
}
