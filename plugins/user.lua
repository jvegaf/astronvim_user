return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  -- browse
  {
    "voldikss/vim-browser-search",
    -- lazy = false,
    keys = { { "<A-s>", ":'<,'>BrowserSearch<cr>", mode = "v", desc = "Search on web" } },
  },
  -- cheat
  {
    "RishabhRD/nvim-cheat.sh",
    dependencies = {
      "RishabhRD/popfix",
    },
    keys = {
      { "<F2>", "<cmd>Cheat<cr>", desc = "Cheat.sh" },
    },
  },
  -- platformio
  {
    "normen/vim-pio",
    event = "BufEnter platformio.ini",
  },
  -- NPM
  {
    "vuki656/package-info.nvim",
    event = "BufEnter package.json",
    config = function() require "plugins.package-info" end,
  },
  -- General
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function()
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
      vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
    end,
  },
  -- LSP
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    keys = {
      { "<leader>ca", "<cmd>CodeActionMenu<cr>", desc = "Code Actions" },
    },
  },
  -- Git
  {
    "kdheepak/lazygit.nvim",
    -- lazy = false,
    cmd = { "LazyGit", "LazyGitCurrentFile", "LazyGitFilterCurrentFile", "LazyGitFilter" },
    config = function() vim.g.lazygit_floating_window_scaling_factor = 1 end,
  },
  -- IA
  {
    "jackMort/ChatGPT.nvim",
    config = function() require("chatgpt").setup() end,
    cmd = { "ChatGPT", "ChatGPTEditWithInstructions" },
  },
  -- Theme
  {
    "RRethy/nvim-base16",
    lazy = false,
  },
}
