return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-lua/popup.nvim" },
    { "nvim-telescope/telescope-fzy-native.nvim" },
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-telescope/telescope-file-browser.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    "debugloop/telescope-undo.nvim",
    {
      "paopaol/telescope-git-diffs.nvim",
      dependencies = { "sindrets/diffview.nvim" },
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      dependencies = {
        "junegunn/fzf.vim",
        dependencies = {
          {
            "tpope/vim-dispatch",
            cmd = { "Make", "Dispatch" },
          },
          {
            "junegunn/fzf",
            build = ":call fzf#install()",
          },
        },
      },
    },
  },
  event = "VeryLazy",
  config = function()
    require "user.config.telescope.setup"
    require "user.config.telescope.mappings"
  end,
}
