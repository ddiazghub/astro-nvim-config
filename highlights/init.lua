local selection =  { bg = "#282828" }

return { -- this table overrides highlights in all themes
  -- Set diagnostic highlight groups and colors:
  -- Error
  DiagnosticUnderlineError = {
    undercurl = true,
    bg = "#440000",
    sp = "#F38BA8",
  },

  -- Warning
  DiagnosticUnderlineWarn = {
    undercurl = true,
    bg = "#40400b",
    sp = "#F9E2AF",
  },

  -- Hint
  DiagnosticUnderlineHint = {
    undercurl = true,
    -- bg = "#39415E",
    sp = "#94E2D5",
  },

  -- Info
  DiagnosticUnderlineInfo = {
    undercurl = true,
    bg = "#384050",
    sp = "#89DCEB",
  },

  -- Fixes visibility for some colors on the current theme
  CursorLine = selection,
  Visual = selection,
  PmenuSel = selection,
  LspInlayHint = { fg = "#585858" },
  TelescopeSelection = { fg = "#d55fde", bg = selection.bg },
}
