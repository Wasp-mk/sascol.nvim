local p = require('sascol.palette')
local base = {
  -- UI Groups
  ColorColumn = { bg = p.greys.bgrey2 },

  Cursor = { fg = p.main.black, bg = p.main.white },
  lCursor = { fg = p.main.black, bg = p.main.white },

  CursorColumn = { bg = p.greys.bgrey2 },
  CursorLine = { bg = p.greys.bgrey2 },

  Conceal = { fg = p.greys.ggrey5 },

  DiagnosticError = { fg = p.main.red1 },
  DiagnosticHint = { fg = p.main.cyan2 },
  DiagnosticInfo = { fg = p.main.blue1 },
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
  StdoutMsg = { fg = p.greys.ggreya, bg = p.main.black },
  ModeMsg = { fg = p.main.yellow2, bg = p.main.black },
  MsgArea = { fg = p.greys.ggreya, bg = p.main.black },
  MsgSeparator = { fg = p.main.white, bg = p.main.black },
  MoreMsg = { fg = p.main.blue1, bg = p.main.black },

  TermCursor = { fg = p.main.black, bg = p.main.white},

  Folded = { fg = p.greys.ggreya, bg = p.extra.none },
  FoldColumn = { fg = p.greys.ggreya, bg = p.extra.none },

  CursorLineNr = { fg = p.main.yellow1 },
  LineNr = { fg = p.greys.bgrey7 },
  LineNrBelow = { fg = p.greys.bgrey7 },
  SignColumn = { fg = p.extra.none, bg = p.extra.none },

  MatchParen = { fg = p.main.white, bg = p.greys.ggrey5 },

  NonText = { fg = p.greys.ggreya }, --"eol", "extends" and "precedes"
  Normal = { fg = p.greys.bgreyb, bg = p.extra.none },
  NormalFloat = { fg = p.greys.bgreyb, bg = p.extra.none },

  Pmenu = { fg = p.main.white, bg = p.main.black },
  PmenuSel = { fg = p.main.black, bg = p.main.white },
  PmenuMatch = { fg = p.main.white, bg = p.main.black },
  PmenuMatchSel = { fg = p.main.white, bg = p.main.black },
  PmenuSbar = { fg = p.main.white, bg = p.main.black },--scrollbar
  PmenuThumb = { bg = p.main.white },--scrollBar
  WildMenu = { fg = p.main.white, bg = p.main.black },

  IncSearch = { fg = p.main.black, bg = p.main.magenta1 },
  Substitute = { fg = p.main.black, bg = p.main.yellow2 },
  Search = { fg = p.main.black, bg = p.main.yellow1 },
  CurSearch = { fg = p.main.black, bg = p.main.magenta1 },

  SpellBad = { undercurl = true, fg = p.main.red1, bg = p.extra.none, sp = p.main.red2 },
  SpellCap = { undercurl = true, fg = p.main.yellow1, bg = p.extra.none, sp = p.main.yellow2 },
  SpellLocal = { undercurl = true, fg = p.main.green1, bg = p.extra.none, sp = p.main.green2 },
  SpellRare = { undercurl = true, fg = p.main.blue1, bg = p.extra.none, sp = p.main.blue1 },

  Visual = { fg = p.extra.none, bg = p.greys.bgrey3 },
  Whitespace = { fg = p.greys.ggrey4 }, --"nbsp", "space", "tab", "multispace", "lead" and "trail"

  StatusLine = { fg = p.main.black, bg = p.main.white },
  StatusLineNC = { fg = p.greys.bgreyd, bg = p.greys.bgrey2, },
  StatusLineTerm = { fg = p.main.white, bg = p.main.black },
  StatusLineTermNC = { fg = p.greys.ggreya, bg = p.main.black },

  WinBar = { fg = p.main.white, bg = p.main.black },
  WinBarNC = { fg = p.greys.ggreya, bg = p.main.black },
  WinSeparator = { fg = p.main.white },

  TabLine = { fg = p.main.white, bg = p.main.black },
  TabLineSel = { fg = p.main.black, bg = p.main.white },
  TabLineFill = { fg = p.main.white, bg = p.extra.none },

  -- Syntax Groups
  Comment = { fg = p.greys.bgrey6, italic = false }, --any comment

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
  Structure = { fg = p.extra.pink2 },--struct, union, enum, etc.
  Typedef = { fg = p.main.blue1 },--a typedef

  Special = { fg = p.main.blue2 },--any special symbol
  SpecialChar = { fg = p.main.red2 },--special character in a constant
  Tag = { fg = p.main.red1 },--you can use CTRL-] on this
  Delimiter = { fg = p.extra.orange1 },--character that needs attention
  SpecialComment = { fg = p.main.yellow2 },--special things inside a comment
  Debug = { fg = p.main.yellow2 },--debugging statements

  Underlined = { fg = p.main.red2 },--text that stands out, HTML links
  Ignore = { fg = p.greys.ggrey5 },--left blank, hidden  hl-Ignore
  Error = { fg = p.main.red1 },--any erroneous construct
  Todo = { fg = p.main.black, bg = p.main.cyan1 },--anything that needs attention; mostly the keyword TODO FIXME and XXX

  Added = { fg = p.main.green2 },--added line in a diff
  Changed = { fg = p.main.yellow2 },--changed line in a diff
  Removed = { fg = p.main.red2 },--removed line in a diff
}

return base
