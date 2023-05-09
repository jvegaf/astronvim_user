return {
  "folke/trouble.nvim",
  -- opts will be merged with the parent spec
  opts = { use_diagnostic_signs = true },
  keys = {
    { "<leader>x", "<cmd>TroubleToggle<cr>", desc = "Trouble" },
  },
}
