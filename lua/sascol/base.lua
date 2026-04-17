local p = require('sascol.palette')
local base = {
  -- UI Groups
  ColorColumn = { bg = p.extra.grey3 },

  CursorColumn = { bg = p.extra.grey3 },
  CursorLine = { bg = p.extra.grey3 },

  Conceal = { fg = p.main.grey1 },

  DiagnosticError = { fg = p.main.red1 },
  DiagnosticHint = { fg = p.main.cyan2 },
  DiagnosticInfo = { fg = p.main.yellow2 },
  DiagnosticOk = { fg = p.main.green2 },
  DiagnosticWarn = { fg = p.main.yellow1 },

  DiffAdd = { fg = p.main.black, bg = p.main.green2 },
  DiffChange = { fg = p.main.black, bg = p.main.magenta2},
  DiffDelete = { fg = p.main.black, bg = p.main.red2 },
  DiffText = { fg = p.main.black, bg = p.main.blue2 },

  Directory = { fg = p.main.blue2 },

  OkMsg = { fg = p.main.green2, bg = p.main.black },
  WarningMsg = { fg = p.main.yellow1, bg = p.main.black },
  ErrorMsg = { fg = p.main.red1, bg = p.main.black },
  StderrMsg = { fg = p.main.red1, bg = p.main.black },
  StdoutMsg = { fg = p.main.grey2, bg = p.main.black },
  ModeMsg = { fg = p.main.yellow2, bg = p.main.black },
  MsgArea = { fg = p.main.grey2, bg = p.main.black },
  MsgSeparator = { fg = p.main.white, bg = p.main.black },
  MoreMsg = { fg = p.main.blue1, bg = p.main.black },

  TermCursor = { fg = p.main.black, bg = p.main.white},

  Folded = { fg = p.main.grey2, bg = 'none' },
  FoldColumn = { fg = p.main.grey2, bg = 'none' },

  CursorLineNr = { fg = p.main.yellow1 },
  LineNr = { fg = p.extra.grey4 },
  LineNrBelow = { fg = p.extra.grey4 },
  SignColumn = { fg = 'none', bg = 'none' },

  MatchParen = { fg = p.main.yellow1, bg = p.main.magenta1 },

  NonText = { fg = p.main.grey2 },
  Normal = { fg = p.main.grey2, bg = 'none' },
  NormalFloat = { fg = p.main.grey2, bg = p.main.black },

  Pmenu = { fg = p.main.grey2, bg = p.main.black },
  PmenuSel = { fg = p.main.black, bg = p.main.grey2 },
  PmenuMatch = { fg = p.main.white, bg = p.main.black },
  PmenuMatchSel = { fg = p.main.white, bg = p.main.black },
  PmenuSbar = { fg = p.main.grey2, bg = p.main.black },--scrollbar
  PmenuThumb = { bg = p.main.grey2 },--scrollBar
  WildMenu = { fg = p.main.grey2, bg = p.main.black },

  IncSearch = { fg = p.main.black, bg = p.main.magenta1 },
  Substitute = { fg = p.main.black, bg = p.main.yellow2 },
  Search = { fg = p.main.black, bg = p.main.yellow1 },
  CurSearch = { fg = p.main.black, bg = p.main.magenta1 },

  SpellBad = { undercurl = true, sp = p.main.red2 },
  SpellCap = { undercurl = true, sp = p.main.yellow2 },
  SpellLocal = { undercurl = true, sp = p.main.green2 },
  SpellRare = { undercurl = true, sp = p.main.blue1 },

  Visual = { fg = 'none', bg = p.extra.grey3 },
  whitespace = { fg = p.main.grey1 },

  StatusLine = { fg = p.main.white, bg = p.main.black },
  StatusLineNC = { fg = p.main.grey2, bg = p.main.black, },
  StatusLineTerm = { fg = p.main.white, bg = p.main.black },
  StatusLineTermNC = { fg = p.main.grey2, bg = p.main.black },

  WinBar = { fg = p.main.white, bg = p.main.black },
  WinBarNC = { fg = p.main.grey2, bg = p.main.black },
  WinSeparator = { fg = p.main.white },

  TabLine = { fg = p.main.white, bg = p.main.black },
  TabLineSel = { fg = p.main.black, bg = p.main.white },
  TabLineFill = { fg = p.main.white, bg = 'none' },

  -- Syntax Groups
  Comment = { fg = p.extra.grey4, italic = false }, --any comment

  Constant = { fg = p.main.blue1 }, --any constant
  String = { fg = p.main.green2 }, --a string constant: "this is a string"
  Character = { fg = p.main.green2 }, --a character constant: 'c', '\n'
  Number = { fg = p.main.yellow1}, --a number constant: 234, 0xff
  Boolean = { fg = p.main.blue1 },--a boolean constant: TRUE, false
  Float = { fg = p.main.yellow1 },--a floating point constant: 2.3e10

  Identifier = { fg = p.main.green1 },--any variable name
  Function = { fg = p.main.magenta2 },--function name (also: methods for classes)

  Statement = { fg = p.main.blue2 },--any statement
  Conditional = { fg = p.main.red1 },--if, then, else, endif, switch, etc.
  Repeat = { fg = p.main.green1 },--for, do, while, etc.
  Label = { fg = p.extra.pink1 },--case, default, etc.
  Operator = { fg = p.extra.orange1 },--"sizeof", "+", "*", etc.
  Keyword = { fg = p.main.red2, bold = false },--any other keyword
  Exception = { fg = p.extra.orange2 },--try, catch, throw

  PreProc = { fg = p.main.blue2 },--generic Preprocessor
  Include = { fg = p.main.red2 },--preprocessor #include
  Define = { fg = p.main.blue2 },--preprocessor #define
  Macro = { fg = p.extra.pink1 },--same as Define
  PreCondit = { fg = p.main.blue2 },--preprocessor #if, #else, #endif, etc.

  Type = { fg = p.main.blue2 },--int, long, char, etc.
  StorageClass = { fg = p.main.blue2 },--static, register, volatile, etc.
  Structure = { fg = p.extra.pink1 },--struct, union, enum, etc.
  Typedef = { fg = p.main.blue1 },--a typedef

  Special = { fg = p.main.blue2 },--any special symbol
  SpecialChar = { fg = p.main.red2 },--special character in a constant
  Tag = { fg = p.main.red1 },--you can use CTRL-] on this
  Delimiter = { fg = p.extra.orange1 },--character that needs attention
  SpecialComment = { fg = p.main.yellow2 },--special things inside a comment
  Debug = { fg = p.main.yellow2 },--debugging statements

  Underline = { fg = p.main.red2 },--text that stands out, HTML links
  Ignore = { fg = p.main.grey1 },--left blank, hidden  hl-Ignore
  Error = { fg = p.main.red1 },--any erroneous construct
  Todo = { fg = p.main.black, bg = p.main.blue2 },--anything that needs extra attention; mostly the keyword TODO FIXME and XXX

  Added = { fg = p.main.green2 },--added line in a diff
  Changed = { fg = p.main.yellow2 },--changed line in a diff
  Removed = { fg = p.main.red2 },--removed line in a diff
}

return base
