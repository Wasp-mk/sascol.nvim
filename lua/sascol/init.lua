local M = {}
local p = require("sascol.palette")

local function hl(name, val)
  vim.api.nvim_set_hl(0, name, val)
end

function M.load()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "sascol"

  local groups = {
    -- UI Groups
    CursorColumn = { bg = p.main.grey1 },
    CursorLine = { bg = p.main.grey1 },
    CursorLineNr = { fg = p.main.gold },

    DiagnosticError = { fg = p.main.red },
    DiagnosticHint = { fg = p.main.cyan },
    DiagnosticInfo = { fg = p.main.yellow },
    DiagnosticOk = { fg = p.main.green },
    DiagnosticWarn = { fg = p.main.gold },

    DiffAdd = { fg = p.main.black, bg = p.main.green },
    DiffChange = { fg = p.main.black, bg = p.main.purple },
    DiffDelete = { fg = p.main.black, bg = p.main.maroon },
    DiffText = { fg = p.main.black, bg = p.main.grey3 },

    Directory = { fg = p.main.celeste },

    ErrorMsg = { fg = p.main.red },
    ModeMsg = { fg = p.main.yellow },
    MoreMsg = { fg = p.main.blue },
    OkMsg = { fg = p.main.green },
    WarningMsg = { fg = p.main.gold },

    TermCursor = { fg = p.main.black, bg = p.main.white},

    Folded = { fg = p.main.grey6, bg = p.main.none },

    LineNr = { fg = p.main.grey3 },
    LineNrBelow = { fg = p.main.grey3 },
    SignColumn = { fg = p.main.none, bg = p.main.black },

    MatchParen = { fg = p.main.gold, bg = p.main.none },

    NonText = { fg = p.main.grey3 },
    Normal = { fg = p.main.grey6, bg = p.main.none },
    NormalFloat = { fg = p.main.grey6, bg = p.main.none },

    Pmenu = { fg = p.main.white, bg = p.main.black },
    PmenuSel = { fg = p.main.black, bg = p.main.grey4 },
    PmenuMatch = { fg = p.main.white },
    PmenuMatchSel = { fg = p.main.white },
    PmenuSbar = { fg = p.main.white, bg = p.main.black },
    PmenuThumb = { bg = p.main.white },

    IncSearch = { fg = p.main.black, bg = p.main.magenta },
    Substitute = { fg = p.main.black, bg = p.main.yellow },
    Search = { fg = p.main.black, bg = p.main.gold },
    CurSearch = { fg = p.main.black, bg = p.main.magenta },

    SpellBad = { undercurl = true, sp = p.main.maroon },
    SpellCap = { undercurl = true, sp = p.main.yellow },
    SpellLocal = { undercurl = true, sp = p.main.green },
    SpellRare = { undercurl = true, sp = p.main.blue },

    StatusLine = { fg = p.main.white, bg = p.main.black },
    StatusLineNC = { fg = p.main.grey4, bg = p.main.black, },

    Visual = { fg = p.main.white, bg = p.main.grey1 },

    WinBar = { fg = p.main.white, bg = p.main.grey3 },
    WinBarNC = { fg = p.main.grey6, bg = p.main.grey1 },
    WildMenu = { fg = p.main.white, bg = p.main.black },
    WinSeparator = { fg = p.main.white },

    TabLine = { fg = p.main.white, bg = p.main.black },
    TabLineFill = { fg = p.main.white, bg = p.main.black },
    TabLineSel = { fg = p.main.black, bg = p.main.white },

    -- Syntax Groups
    Comment = { fg = p.main.grey4, italic = false }, --any comment

    Constant = { fg = p.main.blue }, --any constant
    String = { fg = p.main.green }, --a string constant: "this is a string"
    Character = { fg = p.main.green }, --a character constant: 'c', '\n'
    Number = { fg = p.main. gold}, --a number constant: 234, 0xff
    Boolean = { fg = p.main.blue },--a boolean constant: TRUE, false
    Float = { fg = p.main.gold },--a floating point constant: 2.3e10

    Identifier = { fg = p.main.teal },--any variable name
    Function = { fg = p.main.purple },--function name (also: methods for classes)

    Statement = { fg = p.main.celeste },--any statement
    Conditional = { fg = p.main.red },--if, then, else, endif, switch, etc.
    Repeat = { fg = p.main.teal },--for, do, while, etc.
    Label = { fg = p.main.pink },--case, default, etc.
    Operator = { fg = p.main.orange },--"sizeof", "+", "*", etc.
    Keyword = { fg = p.main.maroon, bold = false },--any other keyword
    Exception = { fg = p.main.orange },--try, catch, throw

    PreProc = { fg = p.main.celeste },--generic Preprocessor
    Include = { fg = p.main.maroon },--preprocessor #include
    Define = { fg = p.main.celeste },--preprocessor #define
    Macro = { fg = p.main.pink },--same as Define
    PreCondit = { fg = p.main.cyan },--preprocessor #if, #else, #endif, etc.

    Type = { fg = p.main.celeste },--int, long, char, etc.
    StorageClass = { fg = p.main.celeste },--static, register, volatile, etc.
    Structure = { fg = p.main.pink },--struct, union, enum, etc.
    Typedef = { fg = p.main.blue },--a typedef

    Special = { fg = p.main.celeste },--any special symbol
    SpecialChar = { fg = p.main.maroon },--special character in a constant
    Tag = { fg = p.main.red },--you can use CTRL-] on this
    Delimiter = { fg = p.main.orange },--character that needs attention
    SpecialComment = { fg = p.main.yellow },--special things inside a comment
    Debug = { fg = p.main.yellow },--debugging statements

    Underline = { fg = p.main.maroon },--text that stands out, HTML links
    Ignore = { fg = p.main.grey3 },--left blank, hidden  hl-Ignore
    Error = { fg = p.main.red },--any erroneous construct
    Todo = { fg = p.main.black, bg = p.main.cyan },--anything that needs extra attention; mostly the keyword TODO FIXME and XXX

    Added = { fg = p.main.green },--added line in a diff
    Changed = { fg = p.main.yellow },--changed line in a diff
    Removed = { fg = p.main.maroon },--removed line in a diff

    -- treesitter
    ["@variable"] = { fg = p.main.white },
    ["@variable.parameter"] = { fg = p.main.yellow },
    ["@variable.member"] = { fg = p.main.teal },

    ["@keyword.type"] = { fg = p.main.pink },--keywords describing namespaces and composite types (e.g. `struct`, `enum`)
    ["@keyword.modifier"] = { fg = p.main.pink },--keywords modifying other constructs (e.g. `const`, `static`, `public`)
    ["@keyword.repeat"] = { fg = p.main.teal },--keywords related to loops (e.g. `for`, `while`)
    ["@keyword.return"] = { fg = p.main.pink }, --keywords like `return` and `yield`

    ["@punctuation.bracket"] = { fg = p.main.grey6 }, --brackets (e.g. `()`, `{}`, `[]`)
  }

  for group, settings in pairs(groups) do
    hl(group, settings)
  end
end

return M
