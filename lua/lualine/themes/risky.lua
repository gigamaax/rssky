local palette = require("risky.palette")

local risky = {}

risky.normal = {
  a = { bg = palette.blue_900, fg = palette.white },
  b = { bg = palette.blue_700, fg = palette.white },
  c = { bg = palette.gray_800, fg = palette.blue_300 },
}

risky.insert = {
  a = { bg = palette.purple_500, fg = palette.white },
  b = { bg = palette.purple_300, fg = palette.white },
  c = { bg = palette.gray_800, fg = palette.purple_100 },
}

risky.command = {
  a = { bg = palette.blue_900, fg = palette.white },
  b = { bg = palette.blue_700, fg = palette.white },
}

risky.visual = {
  a = { bg = palette.green_500, fg = palette.white },
  b = { bg = palette.green_300, fg = palette.white },
  c = { bg = palette.gray_800, fg = palette.green_100 },
}

risky.replace = {
  a = { bg = palette.gray_800, fg = palette.blue_300 },
  b = { bg = palette.blue_700, fg = palette.white },
  c = { bg = palette.blue_900, fg = palette.white },
}

risky.inactive = {
  a = { bg = palette.gray_800, fg = palette.red_100 },
  b = { bg = palette.gray_800, fg = palette.red_100 },
  c = { bg = palette.gray_800, fg = palette.red_100 },
}

return risky
