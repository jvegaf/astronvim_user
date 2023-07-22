-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
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
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      automatic_installation = true,
      ensure_installed = { "prettierd", "stylua" },
    },
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = {
  --     -- ensure_installed = { "python" },
  --     automatic_installation = true,
  --   },
  -- },
}
