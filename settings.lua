print("in settings")

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_win = has "win32"
local is_lin = has "linux"

if is_win then
  require "user.windows"
end

if is_lin then
  require "user.linux"
end


