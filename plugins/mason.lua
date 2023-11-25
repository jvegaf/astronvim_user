return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
      ensure_installed = {
        "bashls",
        "cssls",
        "graphql",
        "html",
        "jsonls",
        "lua_ls",
        "tsserver",
        "emmet_ls",
        "yamlls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      automatic_installation = true,
      ensure_installed = { "prettierd", "stylua", "jq", },
    },
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   opts = {
  --     ensure_installed = { "javadbg", "javatest" },
  --     automatic_installation = true,
  --   },
  -- },
}
