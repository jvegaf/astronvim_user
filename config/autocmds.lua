-- Go to last loc when opening a buffer
vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = "*",
  callback = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "<buffer>",
      once = true,
      callback = function()
        vim.cmd [[if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif]]
      end,
    })
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  desc = "Stop running auto compiler",
  group = vim.api.nvim_create_augroup("autocomp", { clear = true }),
  pattern = "*",
  callback = function() vim.fn.jobstart { "autocomp", vim.fn.expand "%:p", "stop" } end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_attach_auto_diag", { clear = true }),
  callback = function(args)
    -- the buffer where the lsp attached
    ---@type number
    local buffer = args.buf

    -- create the autocmd to show diagnostics
    vim.api.nvim_create_autocmd("CursorHold", {
      group = vim.api.nvim_create_augroup("_auto_diag", { clear = true }),
      buffer = buffer,
      callback = function()
        local opts = {
          focusable = false,
          close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
          border = "rounded",
          source = "always",
          prefix = " ",
          scope = "cursor",
        }
        vim.diagnostic.open_float(nil, opts)
      end,
    })
  end,
})
