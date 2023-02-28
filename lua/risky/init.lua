local palette = require("risky.palette")
local highlighter = require("risky.highlighter")

-- FIXME: make a theme?
---@class Highlight
local highlights = {
  -- Base Layer
  ColorColumn = { bg = palette.gray_700 },
  CursorLine = { bg = palette.gray_700 },
  CursorLineNr = { fg = palette.white, bg = palette.gray_700 },
  Folded = { bg = palette.gray_900, fg = palette.blue_600 },
  LineNr = { fg = palette.gray_500 },
  NonText = { fg = palette.gray_700 },
  Normal = { bg = palette.gray_900 },
  SignColumn = { fg = palette.gray_900 },

  -- Primary layer
  Comment = { fg = palette.blue_200 },
  Identifier = { fg = palette.blue_200 },
  Function = { fg = palette.blue_500 },
  Statement = { fg = palette.blue_300, italic = true },

  Boolean = { fg = palette.blue_600 },
  Character = { fg = palette.blue_200 },
  Float = { fg = palette.blue_500 },
  Number = { link = "Float" },
  String = { link = "Character" },


  -- Secondary layer
  Visual = { bg = palette.purple_100, fg = palette.gray_700 },
  Search = { link = "Visual" },
  CurSearch = { link = "Visual" },
  IncSearch = { link = "Visual" },

  NormalFloat = { bg = palette.gray_900, fg = palette.purple_50 },
  Pmenu = { link = "NormalFloat" },
  PmenuSel = { bg = palette.gray_700 },

  -- Accents
  Directory = { fg = palette.red_200 },
  Operator = { fg = palette.green_400 },
  Special = { fg = palette.green_300 },

  -- Special layer
  diffAdded = { fg = palette.green_500 },
  diffRemoved = { fg = palette.red_500 },
  diffDeleted = { fg = palette.red_500 },
  diffChanged = { fg = palette.orange_500 },
  diffOldFile = { fg = palette.red_500 },
  diffNewFile = { fg = palette.green_500 },

  -- TS primary
  ["@method"] = { link = "Function" },
  ["@property"] = { link = "Identifier" },
  ["@variable"] = { fg = palette.blue_10 },
  -- what does this color?
  ["@variable.builtin"] = { fg = palette.blue_500 },

  -- TS Secondary
  ["@operator"] = { fg = palette.orange_200 },
  ["@punctuation.bracket"] = { fg = palette.green_200 },
  ["@punctuation.delimiter"] = { fg = palette.red_200 },
}

local M = {}

function M.load()
  vim.cmd("highlight clear")
  vim.g.colors_name = "risky"

  highlighter.set(highlights)
end

return M
