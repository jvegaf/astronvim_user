return {
  n = {
    -- disable default bindings
    ["<C-q>"] = false,
    ["<C-s>"] = false,
    ["<leader>h"] = false,
    ["<leader>fh"] = false,
    ["<leader>fm"] = false,
    ["<leader>fn"] = false,
    ["<leader>fo"] = false,
    ["<leader>sb"] = false,
    ["<leader>sc"] = false,
    ["<leader>sh"] = false,
    ["<leader>sk"] = false,
    ["<leader>sm"] = false,
    ["<leader>sn"] = false,
    ["<leader>sr"] = false,
    -- Better window navigation
    ["<C-Left>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
    ["<C-Down>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
    ["<C-Up>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
    ["<C-Right>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
    ["<C-t>"] = { "<cmd>TroubleToggle<cr>", desc = "Trouble Toggle" },
    -- resize with arrows
    -- ["<Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    -- ["<Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    -- ["<Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    -- ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },
    -- easy splits
    -- ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
    -- better increment/decrement
    ["-"] = { "<c-x>", desc = "Descrement number" },
    ["+"] = { "<c-a>", desc = "Increment number" },
    -- Treesitter Surfer
    -- ["<c-down>"] = { "<cmd>STSSwapDownNormal<cr>", desc = "Swap next tree-sitter object" },
    -- ["<c-right>"] = { "<cmd>STSSwapDownNormal<cr>", desc = "Swap next tree-sitter object" },
    -- ["<c-up>"] = { "<cmd>STSSwapUpNormal<cr>", desc = "Swap previous tree-sitter object" },
    -- ["<c-left>"] = { "<cmd>STSSwapUpNormal<cr>", desc = "Swap previous tree-sitter object" },
    -- Git Conflict
    ["Cc"] = { "<Plug>(git-conflict-ours)", desc = "Take Current" },
    ["Ci"] = { "<Plug>(git-conflict-theirs)", desc = "Take Incoming" },
    ["Cb"] = { "<Plug>(git-conflict-both)", desc = "Take Both" },
    ["C0"] = { "<Plug>(git-conflict-none)", desc = "Take None" },
    ["Cr"] = { "<cmd>GitConflictRefresh<cr>", desc = "Refresh Conflicts" },
    ["Cl"] = { "<cmd>GitConflictListQf<cr>", desc = "List Conflicts" },
    ["]C"] = { "<Plug>(git-conflict-next-conflict)", desc = "Next conflict" },
    ["[C"] = { "<Plug>(git-conflict-prev-conflict)", desc = "Previous conflict" },
    ["<A-j>"] = { ":m .+1<CR>==", desc = "move line down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "move line up" },
    ["<A-Down>"] = { ":m .+1<CR>==", desc = "move line down" },
    ["<A-Up>"] = { ":m .-2<CR>==", desc = "move line up" },
    ["<A-1>"] = { "<cmd>NvimTreeToggle<cr>", desc = "Toggle Explorer" },
    ["<Leader>e"] = { "<cmd>NvimTreeFocus<cr>", desc = "Focus Explorer" },
    ["<Tab>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" },
  },
  i = {
    -- type template string
    ["<c-CR>"] = { "<++>", desc = "Insert template string" },
    ["<S-Tab>"] = { "<C-V><Tab>", desc = "Tab character" },
    -- move lines
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", desc = "move line down" },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", desc = "move line up" },
    ["<A-Down>"] = { "<Esc>:m .+1<CR>==gi", desc = "move line down" },
    ["<A-Up>"] = { "<Esc>:m .-2<CR>==gi", desc = "move line up" },
  },
  v = {
    -- navigating wrapped lines
    j = { "gj", desc = "Navigate down" },
    k = { "gk", desc = "Navigate down" },
    -- Google Search
    ["s"] = { ":'<,'>BrowserSearch<cr>", desc = "Browser Search" },
    -- move lines
    ["<A-j>"] = { "<cmd> :m '>+1<CR>gv=gv", desc = "move line down" },
    ["<A-k>"] = { "<cmd> :m '<-2<CR>gv=gv", desc = "move line up" },
    ["<A-Down>"] = { "<cmd> :m '>+1<CR>gv=gv", desc = "move line down" },
    ["<A-Up>"] = { "<cmd> :m '<-2<CR>gv=gv", desc = "move line up" },
  },
  -- terminal mappings
  t = {
    ["<c-q>"] = { "<c-\\><c-n>", desc = "Terminal normal mode" },
    ["<esc><esc>"] = { "<c-\\><c-n>:q<cr>", desc = "Terminal quit" },
  },
  x = {
    -- better increment/decrement
    ["+"] = { "g<c-a>", desc = "Increment number" },
    ["-"] = { "g<c-x>", desc = "Descrement number" },
    -- line text-objects
    ["il"] = { "g_o^", desc = "Inside line text object" },
    ["al"] = { "$o^", desc = "Around line text object" },
    -- Tressitter Surfer
    ["J"] = { "<cmd>STSSelectNextSiblingNode<cr>", desc = "Surf next tree-sitter object" },
    ["K"] = { "<cmd>STSSelectPrevSiblingNode<cr>", desc = "Surf previous tree-sitter object" },
    ["H"] = { "<cmd>STSSelectParentNode<cr>", desc = "Surf parent tree-sitter object" },
    ["L"] = { "<cmd>STSSelectChildNode<cr>", desc = "Surf child tree-sitter object" },
    ["<c-j>"] = { "<cmd>STSSwapNextVisual<cr>", desc = "Surf next tree-sitter object" },
    ["<c-l>"] = { "<cmd>STSSwapNextVisual<cr>", desc = "Surf next tree-sitter object" },
    ["<c-k>"] = { "<cmd>STSSwapPrevVisual<cr>", desc = "Surf previous tree-sitter object" },
    ["<c-h>"] = { "<cmd>STSSwapPrevVisual<cr>", desc = "Surf previous tree-sitter object" },
  },
  o = {
    -- line text-objects
    ["il"] = { ":normal vil<cr>", desc = "Inside line text object" },
    ["al"] = { ":normal val<cr>", desc = "Around line text object" },
  },
  [""] = {
    ["<c-e><c-e>"] = { "<Plug>SendLine", desc = "Send line to REPL" },
    ["<c-e>"] = { "<Plug>Send", desc = "Send to REPL" },
  },
}
