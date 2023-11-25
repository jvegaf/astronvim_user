return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "ray-x/aurora",
    lazy = false,
    config = function()
      vim.g.aurora_italic = true
      vim.g.aurora_transparent = true
      vim.g.aurora_bold = true
      vim.g.aurora_darker = true
     -- vim.cmd [[ colorscheme aurora ]]
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
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
  -- {
  --   "normen/vim-pio",
  --   event = "BufEnter platformio.ini",
  -- },
  -- NPM
  {
    "vuki656/package-info.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    event = "BufEnter package.json",
    config = function()
      require("package-info").setup()
      vim.keymap.set(
        "n",
        "<leader>ns",
        "<cmd>lua require('package-info').show()<cr>",
        { silent = true, noremap = true }
      )
      vim.keymap.set(
        "n",
        "<leader>nd",
        "<cmd>lua require('package-info').delete()<cr>",
        { silent = true, noremap = true }
      )
      vim.keymap.set(
        "n",
        "<leader>ni",
        "<cmd>lua require('package-info').install()<cr>",
        { silent = true, noremap = true }
      )

      vim.keymap.set({ "n" }, "<leader>nu", require("package-info").update, { silent = true, noremap = true })

      require("telescope").setup {
        extensions = {
          package_info = {
            -- Optional theme (the extension doesn't set a default theme)
            theme = "ivy",
          },
        },
      }

      require("telescope").load_extension "package_info"

      vim.keymap.set({ "n" }, "<leader>Tp", "<cmd>Telescope package_info<cr>", { silent = true, noremap = true, description = "Package Info" })
    end,
  },
  -- General
  {
    "mg979/vim-visual-multi",
    keys = {
      "<C-n>",
      "<C-Up>",
      "<C-Down>",
      "<S-Up>",
      "<S-Down>",
      "<S-Left>",
      "<S-Right>",
    },
    config = function() vim.g.VM_leader = ";" end,
  },
  -- LSP
  -- {
  --   "weilbith/nvim-code-action-menu",
  --   cmd = "CodeActionMenu",
  --   keys = {
  --     { "<leader>xc", "<cmd>CodeActionMenu<cr>", desc = "Code Actions" },
  --   },
  -- },
  -- Git
  {
    "kdheepak/lazygit.nvim",
    -- lazy = false,
    cmd = { "LazyGit", "LazyGitCurrentFile", "LazyGitFilterCurrentFile", "LazyGitFilter" },
    config = function() vim.g.lazygit_floating_window_scaling_factor = 1 end,
  },
  -- IA
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   config = function() require("chatgpt").setup() end,
  --   cmd = { "ChatGPT", "ChatGPTEditWithInstructions" },
  -- },
  -- Theme
  -- {
  --   "RRethy/nvim-base16",
  --   lazy = false,
  -- },
}
