return {
  "benfowler/telescope-luasnip.nvim",
  lazy = false,
  dependecies = { "nvim-telescope/telescope.nvim", "L3MON4D3/LuaSnip" },
  config = function() require("telescope").load_extension "luasnip" end,
  keys = {
    { "n", "<leader>fs", "<cmd>Telescope luasnip<cr>", { noremap = true, silent = true, desc = "Find Snippets" } },
  },
}
