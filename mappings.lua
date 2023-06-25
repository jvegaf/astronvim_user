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
    ["<leader>c"] = false,
    ["<A-q>"] = { "<cmd>Bdelete<cr>", desc = "Close Buffer" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>lf"] = { "<cmd>vim.lsp.buf.format()<cr>", desc = "Format Buffer" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>x"] = { name = "Diagnostics" },
    ["<leader>T"] = { name = "Telescope" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<Tab>"] = {
      "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>",
      desc = "Buffers list",
    },
    ["vv"] = { "V", desc = "Visual Line Mode" },
    ["zz"] = { "<cmd>wq<cr>", desc = "Write and Quit" },
    ["<Esc><Esc>"] = { "V", desc = "Cancel search highlighting" },
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
