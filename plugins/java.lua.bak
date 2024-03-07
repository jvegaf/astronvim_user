local utils = require "astronvim.utils"

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "java", "html" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "lemminx" }) end,
  },
  {
    "nvim-java/nvim-java",
    ft = "java",
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          if not opts.registries then opts.registries = { "github:mason-org/mason-registry" } end
          table.insert(opts.registries, 1, "github:nvim-java/mason-registry")
        end,
      },
    },
    init = function()
      astronvim.lsp.skip_setup = require("astronvim.utils").list_insert_unique(astronvim.lsp.skip_setup, "jdtls")
    end,
    config = function()
      require("java").setup()
      require("lspconfig").jdtls.setup(require("astronvim.utils.lsp").config "jdtls")
    end,
  },
}
