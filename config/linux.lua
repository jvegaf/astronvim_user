vim.opt.shell = "zsh"

local has_wsl = function()
  local output = vim.fn.systemlist "uname -r"
  return string.find(output[1] or "", "WSL")
end

local is_wsl = has_wsl

if is_wsl then
  -- Set a compatible clipboard manager
  vim.notify("Using WSL clipboard manager")
  vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("Yank", { clear = true }),
    callback = function() vim.fn.system("clip.exe", vim.fn.getreg '"') end,
  })
end
