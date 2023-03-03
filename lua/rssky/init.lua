local highlighter = require("rssky.highlighter")
local palette = require("rssky.palette")

---@class Theme
local theme = {
  base_bg = palette.gray_900,
  base_fg = palette.gray_700,
  base_bright = palette.white,

  primary_bright = palette.blue_10,
  primary_extralight = palette.blue_50,
  primary_light = palette.blue_200,
  primary_med = palette.blue_300,
  primary_dark = palette.blue_500,
  primary_extradark = palette.blue_600,

  secondary_extralight = palette.purple_50,
  secondary_light = palette.purple_100,

  accent_1 = palette.red_200,
  accent_2 = palette.green_200,
  accent_3 = palette.orange_200,

  special_error = palette.red_500,
  special_warning = palette.orange_500,
  special_success = palette.green_500,
}

local M = {}

function M.load()
  vim.cmd("highlight clear")
  vim.g.colors_name = "rssky"

  highlighter.set(theme)
end

return M
