return {
  -- override nvim-autopairs plugin
  "hrsh7th/nvim-cmp",
  event = "User AstroFile",
  dependencies = {
    "hrsh7th/cmp-emoji", -- add cmp source as dependency of cmp
    { "tzachar/cmp-tabnine", build = "./install.sh" },
  },
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp",    priority = 1000 },
      { name = "luasnip",     priority = 850 },
      { name = "buffer",      priority = 500 },
      { name = "path",        priority = 250 },
      { name = "cmp_tabnine", priority = 800 },
      { name = "emoji",       priority = 600 }, -- add new source
    }

    -- opts.experimental = cmp.config.experimental {
    --   ghost_text = true,
    -- }

    -- return the new table to be used
    return opts
  end,
}
