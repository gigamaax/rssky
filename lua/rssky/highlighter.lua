local M = {}

---@param theme Theme
function M.set(theme)
  local highlights = {
    -- Base Layer
    ColorColumn = { bg = theme.base_fg },
    CursorLine = { bg = theme.base_fg },
    CursorLineNr = { fg = theme.base_bright, bg = theme.base_fg },
    Folded = { bg = theme.base_bg, fg = theme.primary_extradark },
    LineNr = { fg = theme.base_fg },
    NonText = { fg = theme.base_fg },
    Normal = { bg = theme.base_bg },
    SignColumn = { fg = theme.base_bg },

    -- Primary layer
    Comment = { fg = theme.primary_extralight },
    Identifier = { fg = theme.primary_light },
    Function = { fg = theme.primary_dark },
    PreProc = { fg = theme.primary_dark },
    Statement = { fg = theme.primary_med, italic = true },

    Boolean = { fg = theme.primary_extradark },
    Character = { fg = theme.primary_light },
    Float = { fg = theme.primary_dark },
    Number = { link = "Float" },
    String = { link = "Character" },

    Type = { fg = theme.secondary_light, italic = true },

    -- Secondary layer
    Visual = { bg = theme.secondary_light, fg = theme.base_fg },
    Search = { link = "Visual" },
    CurSearch = { link = "Visual" },
    IncSearch = { link = "Visual" },

    NormalFloat = { bg = theme.base_bg, fg = theme.secondary_extralight },
    Pmenu = { link = "NormalFloat" },
    PmenuSel = { bg = theme.base_fg },

    -- Accents
    Directory = { fg = theme.accent_1 },
    Operator = { fg = theme.accent_1 },
    Special = { fg = theme.accent_2 },

    -- Special layer
    diffAdded = { fg = theme.special_success },
    diffRemoved = { fg = theme.special_error },
    diffDeleted = { fg = theme.special_error },
    diffChanged = { fg = theme.special_warning },
    diffOldFile = { fg = theme.special_error },
    diffNewFile = { fg = theme.special_success },

    -- TS primary
    ["@keyword.operator"] = { link = "Operator" },
    ["@method"] = { link = "Function" },
    ["@property"] = { link = "Identifier" },
    ["@variable"] = { fg = theme.primary_bright },
    -- what does this color?
    ["@variable.builtin"] = { fg = theme.primary_dark },

    -- TS Secondary
    ["@operator"] = { fg = theme.accent_3 },
    ["@punctuation.bracket"] = { fg = theme.accent_2 },
    ["@punctuation.delimiter"] = { fg = theme.accent_1 },
  }

  for group, colors in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

return M
