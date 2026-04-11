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
    ColorColumn = { bg = p.main.grey },

    Conceal = { fg = p.main.lightGrey },

    CursorColumn = { bg = p.main.grey },
    CursorLine = { bg = p.main.grey },
    CursorLineNr = { fg = p.main.yellow },

    DiagnosticError = { fg = p.main.red },
    DiagnosticHint = { fg = p.main.cyan },
    DiagnosticInfo = { fg = p.main.lightYellow },
    DiagnosticOk = { fg = p.main.lightGreen },
    DiagnosticWarn = { fg = p.main.yellow },

    DiffAdd = { fg = p.main.black, bg = p.main.lightGreen },
    DiffChange = { fg = p.main.black, bg = p.main.lightMagenta},
    DiffDelete = { fg = p.main.black, bg = p.main.lightRed },
    DiffText = { fg = p.main.black, bg = p.main.lightGrey },

    Directory = { fg = p.main.lightBlue },

    ErrorMsg = { fg = p.main.red },
    ModeMsg = { fg = p.main.lightYellow },
    MoreMsg = { fg = p.main.blue },
    OkMsg = { fg = p.main.lightGreen },
    WarningMsg = { fg = p.main.yellow },

    TermCursor = { fg = p.main.black, bg = p.main.white},

    Folded = { fg = p.main.lightGrey, bg = p.main.none },
    FoldColumn = { fg = p.main.lightGrey, bg = p.main.none },

    LineNr = { fg = p.main.lightGrey },
    LineNrBelow = { fg = p.main.lightGrey },
    SignColumn = { fg = p.main.none, bg = p.main.none },

    MatchParen = { fg = p.main.yellow, bg = p.main.magenta },

    NonText = { fg = p.main.lightGrey },
    Normal = { fg = p.main.lightGrey, bg = p.main.none },
    NormalFloat = { fg = p.main.lightGrey, bg = p.main.black },

    Pmenu = { fg = p.main.lightGrey, bg = p.main.black },
    PmenuSel = { fg = p.main.black, bg = p.main.lightGrey },
    PmenuMatch = { fg = p.main.white, bg = p.main.black },
    PmenuMatchSel = { fg = p.main.white, bg = p.main.black },
    PmenuSbar = { fg = p.main.lightGrey, bg = p.main.black },--scrollbar
    PmenuThumb = { bg = p.main.lightGrey },--scrollBar
    WildMenu = { fg = p.main.lightGrey, bg = p.main.black },

    IncSearch = { fg = p.main.black, bg = p.main.magenta },
    Substitute = { fg = p.main.black, bg = p.main.lightYellow },
    Search = { fg = p.main.black, bg = p.main.yellow },
    CurSearch = { fg = p.main.black, bg = p.main.magenta },

    SpellBad = { undercurl = true, sp = p.main.lightRed },
    SpellCap = { undercurl = true, sp = p.main.lightYellow },
    SpellLocal = { undercurl = true, sp = p.main.lightGreen },
    SpellRare = { undercurl = true, sp = p.main.blue },

    Visual = { fg = p.main.none, bg = p.main.grey },

    StatusLine = { fg = p.main.white, bg = p.main.black },
    StatusLineNC = { fg = p.main.lightgrey, bg = p.main.black, },
    StatusLineTerm = { fg = p.main.white, bg = p.main.black },
    StatusLineTermNC = { fg = p.main.lightGrey, bg = p.main.black },

    WinBar = { fg = p.main.white, bg = p.main.black },
    WinBarNC = { fg = p.main.lightGrey, bg = p.main.black },
    WinSeparator = { fg = p.main.white },

    TabLine = { fg = p.main.white, bg = p.main.black },
    TabLineSel = { fg = p.main.black, bg = p.main.white },
    TabLineFill = { fg = p.main.white, bg = p.main.none },

    -- Syntax Groups
    Comment = { fg = p.main.lightGrey, italic = false }, --any comment

    Constant = { fg = p.main.blue }, --any constant
    String = { fg = p.main.lightGreen }, --a string constant: "this is a string"
    Character = { fg = p.main.lightGreen }, --a character constant: 'c', '\n'
    Number = { fg = p.main. yellow}, --a number constant: 234, 0xff
    Boolean = { fg = p.main.blue },--a boolean constant: TRUE, false
    Float = { fg = p.main.yellow },--a floating point constant: 2.3e10

    Identifier = { fg = p.main.green },--any variable name
    Function = { fg = p.main.lightMagenta },--function name (also: methods for classes)

    Statement = { fg = p.main.lightBlue },--any statement
    Conditional = { fg = p.main.red },--if, then, else, endif, switch, etc.
    Repeat = { fg = p.main.green },--for, do, while, etc.
    Label = { fg = p.main.pink },--case, default, etc.
    Operator = { fg = p.main.orange },--"sizeof", "+", "*", etc.
    Keyword = { fg = p.main.lightRed, bold = false },--any other keyword
    Exception = { fg = p.main.orange },--try, catch, throw

    PreProc = { fg = p.main.lightBlue },--generic Preprocessor
    Include = { fg = p.main.lightRed },--preprocessor #include
    Define = { fg = p.main.lightBlue },--preprocessor #define
    Macro = { fg = p.main.pink },--same as Define
    PreCondit = { fg = p.main.cyan },--preprocessor #if, #else, #endif, etc.

    Type = { fg = p.main.lightBlue },--int, long, char, etc.
    StorageClass = { fg = p.main.lightBlue },--static, register, volatile, etc.
    Structure = { fg = p.main.pink },--struct, union, enum, etc.
    Typedef = { fg = p.main.blue },--a typedef

    Special = { fg = p.main.lightBlue },--any special symbol
    SpecialChar = { fg = p.main.lightRed },--special character in a constant
    Tag = { fg = p.main.red },--you can use CTRL-] on this
    Delimiter = { fg = p.main.orange },--character that needs attention
    SpecialComment = { fg = p.main.lightYellow },--special things inside a comment
    Debug = { fg = p.main.lightYellow },--debugging statements

    Underline = { fg = p.main.lightRed },--text that stands out, HTML links
    Ignore = { fg = p.main.grey },--left blank, hidden  hl-Ignore
    Error = { fg = p.main.red },--any erroneous construct
    Todo = { fg = p.main.black, bg = p.main.cyan },--anything that needs extra attention; mostly the keyword TODO FIXME and XXX

    Added = { fg = p.main.lightGreen },--added line in a diff
    Changed = { fg = p.main.lightYellow },--changed line in a diff
    Removed = { fg = p.main.lightRed },--removed line in a diff

    -- treesitter
    ["@variable"] = { fg = p.main.white },
    ["@variable.parameter"] = { fg = p.main.lightYellow },
    ["@variable.member"] = { fg = p.main.green },

    ["@keyword.type"] = { fg = p.main.pink },--keywords describing namespaces and composite types (e.g. `struct`, `enum`)
    ["@keyword.modifier"] = { fg = p.main.pink },--keywords modifying other constructs (e.g. `const`, `static`, `public`)
    ["@keyword.repeat"] = { fg = p.main.green },--keywords related to loops (e.g. `for`, `while`)
    ["@keyword.return"] = { fg = p.main.pink }, --keywords like `return` and `yield`

    ["@punctuation.bracket"] = { fg = p.main.lightGrey }, --brackets (e.g. `()`, `{}`, `[]`)
  }

  for group, settings in pairs(groups) do
    hl(group, settings)
  end
end

return M
