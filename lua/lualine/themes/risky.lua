local palette = require("risky.palette")

return {
  normal = {
    a = { bg = palette.blue_900, fg = palette.white },
    b = { bg = palette.blue_600, fg = palette.white },
    c = { bg = palette.gray_800, fg = palette.blue_300 },
  },

  insert = {
    a = { bg = palette.red_900, fg = palette.white },
    b = { bg = palette.red_600, fg = palette.white },
    c = { bg = palette.gray_800, fg = palette.red_300 },
  },

  visual = {
    a = { bg = palette.purple_900, fg = palette.white },
    b = { bg = palette.purple_600, fg = palette.white },
    c = { bg = palette.gray_800, fg = palette.purple_300 },
  },

  -- inverse of insert
  replace = {
    a = { bg = palette.gray_800, fg = palette.red_300 },
    b = { bg = palette.red_600, fg = palette.white },
    c = { bg = palette.red_900, fg = palette.white },
  },

  -- inverse of visual
  command = {
    a = { bg = palette.gray_800, fg = palette.purple_300 },
    b = { bg = palette.purple_600, fg = palette.white },
    c = { bg = palette.purple_900, fg = palette.white },
  },

  -- variant of normal
  inactive = {
    a = { bg = palette.gray_900, fg = palette.blue_300 },
    b = { bg = palette.gray_900, fg = palette.blue_300 },
    c = { bg = palette.gray_900, fg = palette.blue_300 },
  },
}
