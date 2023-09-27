return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.nvim-regexplainer" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.mini-surround" },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add =  "gsa", -- Add surrounding in Normal and Visual modes
        delete =  "gsd", -- Delete surrounding
        find =  "gsf", -- Find surrounding (to the right)
        find_left =  "gsF", -- Find surrounding (to the left)
        highlight =  "gsh", -- Highlight surrounding
        replace =  "gsr", -- Replace surrounding
        update_n_lines =  "gsn", -- Update `n_lines`
      },
    },
  },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.register.nvim-neoclip-lua" },
  { import = "astrocommunity.syntax.hlargs-nvim" },
  { import = "astrocommunity.utility.neodim" },
  -- { import = "astrocommunity.pack.lua" },
}
