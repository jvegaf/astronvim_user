-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    -- Open file in browser
    ["<space>r"] = { ":exe ':silent !firefox %'<cr>", desc = "Run Browser" },
    -- View treesitter highlight groups
    ["<space>k"] = { ":TSHighlightCapturesUnderCursor<cr>", desc = "View Highlight Group" },
    -- Easy splits
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
    -- Search highlight groups
    ["<space>sg"] = { "<cmd>Telescope highlights<cr>", desc = "Highlight groups" },
    -- quick close
    ["<S-q>"] = { "<cmd>bdelete<cr>", desc = "close buffer" },
    ["<A-j>"] = { ":m .+1<CR>==", desc = "move line down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "move line up" },
    ["<A-Down>"] = { ":m .+1<CR>==", desc = "move line down" },
    ["<A-Up>"] = { ":m .-2<CR>==", desc = "move line up" },
    ["<A-1>"] = { "<cmd>NvimTreeToggle<cr>", desc = "Toggle Explorer" },
    ["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer tab" },
    ["<Tab>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" },
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  i = {
    -- move lines
    -- TODO: substitute with https://github.com/ziontee113/syntax-tree-surfer
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", desc = "move line down" },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", desc = "move line up" },
    ["<A-Down>"] = { "<Esc>:m .+1<CR>==gi", desc = "move line down" },
    ["<A-Up>"] = { "<Esc>:m .-2<CR>==gi", desc = "move line up" },
  },
  v = {
    -- move lines
    ["<A-j>"] = { "<cmd> :m '>+1<CR>gv=gv", desc = "move line down" },
    ["<A-k>"] = { "<cmd> :m '<-2<CR>gv=gv", desc = "move line up" },
    ["<A-Down>"] = { "<cmd> :m '>+1<CR>gv=gv", desc = "move line down" },
    ["<A-Up>"] = { "<cmd> :m '<-2<CR>gv=gv", desc = "move line up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
