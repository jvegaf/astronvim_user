vim.opt.clipboard:prepend { "unnamed", "unnamedplus" }
vim.opt.shell = "pwsh"

-- Set a compatible clipboard manager
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
}

vim.g.vim_g_open_command = "cmd.exe /c start chrome"
vim.g.vim_g_command = "G"
vim.g.vim_g_f_command = "Gf"
