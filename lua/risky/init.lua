local palette = require("risky.palette")

---@class Theme
local theme = {
  bg = palette.gray_900,
  fg = palette.gray_10,

  func = palette.blue_500,
  identifier = palette.blue_300,
  keyword = palette.blue_400,
  special = palette.blue_200,
  variable = palette.blue_50,
  variable_builtin = palette.purple_50,

  comment = palette.green_100,
  operator = palette.green_300,

  bool = palette.purple_300,
  const = palette.purple_100,
  number = palette.purple_100,
  string = palette.purple_200,

  accent_normal_1 = palette.gray_700,
  accent_visual_1 = palette.blue_50,
}

local highlights = {
  Normal = { bg = theme.bg, fg = theme.fg },

  Visual = { bg = theme.accent_visual_1, fg = palette.gray_900 },
  Search = { link = "Visual" },

  Comment = { fg = theme.comment, italic = true },
  ColorColumn = { bg = theme.accent_normal_1 },
  Cursor = { bg = palette.blue_600, fg = palette.blue_100 },
  CursorLine = { bg = theme.accent_normal_1 },
  CursorLineNr = { fg = theme.identifier },
  LineNr = { fg = theme.accent_normal_1 },
  Whitespace = { fg = theme.accent_normal_1 },
  NonText = { fg = theme.accent_normal_1 },
  SpecialKey = { link = "NonText" },

  Keyword = { fg = theme.keyword },
  Identifier = { fg = theme.identifier },
  Function = { fg = theme.func, italic = true },
  Method = { link = "Function" },
  Statement = { fg = theme.operator },
  Special = { fg = theme.special },
  Operator = { fg = theme.operator },

  Boolean = { fg = theme.bool },
  Constant = { fg = theme.const },
  Character = { link = "String" },
  Float = { fg = theme.number },
  Number = { link = "Float" },
  String = { fg = theme.string },

  Directory = { fg = palette.orange_200 },

  ["@attribute"] = { link = "Constant" },
  ["@field"] = { link = "Identifier" },
  ["@keyword"] = { link = "Keyword" },
  ["@label"] = { link = "Label" },
  ["@method"] = { link = "Function" },
  ["@operator"] = { link = "Operator" },
  ["@property"] = { link = "Identifier" },
  ["@punctuation.delimiter"] = { fg = theme.comment },
  ["@punctuation.bracket"] = { fg = theme.comment },
  ["@punctuation.Special"] = { fg = theme.comment },
  ["@symbol"] = { link = "Identifier" },
  ["@variable"] = { fg = theme.variable },
  ["@variable.builtin"] = { fg = theme.variable_builtin },
}

local function set_highlights()
  --  vim.cmd("highlight clear")

  for group, colors in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

local M = {}

function M.load()
  vim.g.colors_name = "risky"
  set_highlights()
end

return M
