-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["gq"] = {
      function()
        return vim.lsp.buf.format {
          async = false,
          timeout_ms = 10000,
          filter = function(cli) return cli.name ~= "lua_ls" end,
        }
      end,
      buffer = 0,
      desc = "Format Buffer",
    },
    ["<leader>c"] = false,
    ["<A-q>"] = { function() require("astronvim.utils.buffer").close() end, desc = "Close Buffer" },
    ["<A-w>"] = { "<cmd>w<cr>", desc = "Write" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["U"] = { "<cmd>Telescope undo<cr>", desc = "Undo Tree" },
    ["<leader>P"] = { "<cmd>Telescope projects<cr>", desc = "Projects" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>x"] = { name = "Diagnostics" },
    ["<leader>xc"] = { "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Actions" },
    ["<leader>t"] = { name = "Test" },
    ["<leader>T"] = { name = "Telescope" },
    ["<leader>z"] = { name = "System" },
    ["<leader>zc"] = { "<cmd>e $MYVIMRC<cr>", desc = "Config" },
    ["<leader>zh"] = { "<cmd>checkhealth<cr>", desc = "Health" },
    ["<leader>zn"] = { "<cmd>Telescope notify<cr>", desc = "Notifications" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<Tab>"] = {
      "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>",
      desc = "Buffers list",
    },
    ["vv"] = { "V", desc = "Visual Line Mode" },
    ["zz"] = { "<cmd>wq<cr>", desc = "Write and Quit" },
    ["<Esc><Esc>"] = { ":nohlsearch<Bar>:echo<CR>", desc = "Cancel search highlighting" },
    ["<C-a>"] = { "gg<S-v>G", desc = "Select All" },
    ["<A-1>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm float" },
    ["<A-2>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
    ["<A-3>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "ToggleTerm vertical split" },
  },
  t = {
    ["<A-1>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<A-2>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<A-3>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<"] = { "<gv", desc = "Stay in indent mode" },
    [">"] = { ">gv", desc = "Stay in indent mode" },
    ["p"] = { '"_dP', desc = "Dont yank in visual paste" },
  },
  x = {
    ["p"] = { '"_dP', desc = "Dont yank in visual paste" },
  },
}
