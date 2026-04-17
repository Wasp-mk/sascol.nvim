local p = require('sascol.palette')
local treesitter = {
  -- treesitter
  ["@variable"] = { fg = p.main.white },
  ["@variable.parameter"] = { fg = p.main.yellow2 },
  ["@variable.member"] = { fg = p.main.green1 },

  ["@keyword.type"] = { fg = p.extra.pink1 },--keywords describing namespaces and composite types (e.g. `struct`, `enum`)
  ["@keyword.modifier"] = { fg = p.extra.pink2 },--keywords modifying other constructs (e.g. `const`, `static`, `public`)
  ["@keyword.repeat"] = { fg = p.main.green1 },--keywords related to loops (e.g. `for`, `while`)
  ["@keyword.return"] = { fg = p.extra.pink1 }, --keywords like `return` and `yield`

  ["@punctuation.bracket"] = { fg = p.main.grey2 }, --brackets (e.g. `()`, `{}`, `[]`)
}

return treesitter
