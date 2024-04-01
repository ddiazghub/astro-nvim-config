function IsWindows()
  return vim.uv.os_uname().sysname == "Windows_NT"
end

function IsLinux()
  return vim.uv.os_uname().sysname == "Linux"
end

function IsMacos()
  return vim.uv.os_uname().sysname == "Darwin"
end
