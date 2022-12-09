return {
  -- You can disable default plugins as follows:
  ["goolord/alpha-nvim"] = { disable = true },
  ["nvim-neo-tree/neo-tree.nvim"] = { disable = true }, -- You can also add new plugins here as well:
  ["max397574/better-escape.nvim"] = { disable = true },
  -- You can also add new plugins here as well:
  -- themes
  { "sainnhe/sonokai" },
  { "ellisonleao/gruvbox.nvim" },

  { "normen/vim-pio" },
  { "voldikss/vim-browser-search" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  ["mg979/vim-visual-multi"] = {
    config = function() vim.g.VM_leader = ";" end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  ["nvim-tree/nvim-tree.lua"] = {
    requires = { "nvim-tree/nvim-web-devicons" },
    tag = "nightly",
    config = function() require "user.plugins.nvim-tree" end,
  },
  ["wakatime/vim-wakatime"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-wakatime") end,
  },
  ["nvim-treesitter/playground"] = {
    cmd = "TSHighlightCapturesUnderCursor",
  },
  ["karb94/neoscroll.nvim"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "neoscroll.nvim") end,
    config = function() require("user.plugins.neoscroll").config() end,
  },
}
