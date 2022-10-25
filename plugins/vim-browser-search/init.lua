return {
  event = "VimEnter",
  config = function() require("user.plugins.vim-browser-search.config").setup() end,
}
