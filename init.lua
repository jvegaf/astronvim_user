return {
  colorscheme = "duskfox",

  updater = { skip_prompts = true },

  cmp = {
    source_priority = {
      luasnip = 1000,
      nvim_lua = 800,
      nvim_lsp = 700,
      path = 500,
      buffer = 250,
    },
  },

  polish = function()
    require "user.autocmds"
    require "user.settings"
    require "user.mappings"
  end,
}
