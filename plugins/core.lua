return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        -- this can be used if your configuration lives in ~/.config/nvim
        -- if your configuration lives in ~/.config/astronvim, the full path
        -- must be specified in the next line
        paths = { "./lua/user/snippets" }
      }
    end,
  },
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   config = function(_, opts)
  --     require("neo-tree").setup {
  --       close_if_last_window = true,
  --       filesystem = {
  --         follow_current_file = true,
  --       },
  --       event_handlers = {
  --         {
  --           event = "file_opened",
  --           handler = function(file_path) require("neo-tree.command").execute { action = "close" } end,
  --         },
  --       },
  --       window = {
  --         ignore_focused = true,
  --         auto_ignore_identical_files = true,
  --         follow = true,
  --         focus_follow = true,
  --         highlight_opened_files = true,
  --         mappings = {
  --           ["h"] = function(state)
  --             local node = state.tree:get_node()
  --             if node.type == "directory" and node:is_expanded() then
  --               require("neo-tree.sources.filesystem").toggle_directory(state, node)
  --             else
  --               require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
  --             end
  --           end,
  --           ["l"] = function(state)
  --             local node = state.tree:get_node()
  --             if node.type == "directory" then
  --               if not node:is_expanded() then
  --                 require("neo-tree.sources.filesystem").toggle_directory(state, node)
  --               elseif node:has_children() then
  --                 require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
  --               end
  --             end
  --           end,
  --         },
  --       },
  --     }
  --   end,
  -- },
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
