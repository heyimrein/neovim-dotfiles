local options = {
  wrap = false,
  number = true,
  numberwidth = 4,
  smartindent = true,
  tabstop = 2,
  shiftwidth = 2,
  showtabline = 2,
}

for k, v in pairs(options) do
  vim.o[k] = v
end
