return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "marilari88/neotest-vitest",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {},
      },
      status = { virtual_text = true },
      output = { open_on_run = true },
      -- quickfix = {
      --   open = vim.cmd "Trouble quickfix",
      -- },
    },
    keys = {
      { "<leader>tt", function() require("neotest").run.run(vim.fn.expand "%") end, desc = "Run File" },
      { "<leader>tT", function() require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
      { "<leader>tr", function() require("neotest").run.run() end, desc = "Run Nearest" },
      { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
      {
        "<leader>to",
        function() require("neotest").output.open { enter = true, auto_close = true } end,
        desc = "Show Output",
      },
      { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
      { "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop" },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    keys = {
      { "<leader>td", function() require("neotest").run.run { strategy = "dap" } end, desc = "Debug Nearest" },
    },
  },
}
