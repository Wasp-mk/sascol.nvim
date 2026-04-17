local M = {}
local b = require('sascol.base')
local t = require('sascol.treesitter')

local function hl(name, val)
  vim.api.nvim_set_hl(0, name, val)
end

function M.load()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "sascol"

  for group, settings in pairs(b) do
    hl(group, settings)
  end
  for group, settings in pairs(t) do
    hl(group, settings)
  end
end

return M
