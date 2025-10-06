return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      require("lspconfig").lua_ls.setup({})
      require("lspconfig").gopls.setup({})
      require("lspconfig").pylsp.setup({})
      require("lspconfig").templ.setup({
        filetypes = { "templ" },
        cmd = { "templ", "lsp" },
      })
      require("lspconfig").terraformls.setup({
        filetypes = { "terraform", "tf" },
        cmd = { "terraform-ls", "serve" },
      })

      require("cmp_nvim_lsp").default_capabilities()

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then
            return
          end
        end,
      })
    end,
  },
}
