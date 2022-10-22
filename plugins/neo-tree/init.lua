return {
  branch = "v2.x",
  module = "neo-tree",
  cmd = "Neotree",
  requires = { { "MunifTanjim/nui.nvim", module = "nui" } },
  setup = function() vim.g.neo_tree_remove_legacy_commands = true end,
  config = function() require "user.plugins.neo-tree.config" end,
}
