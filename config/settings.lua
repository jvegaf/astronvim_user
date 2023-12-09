local host = vim.loop.os_uname().sysname

if host == "Linux" then
  -- require "user.config.linux"
  return
end

require "user.config.windows"
