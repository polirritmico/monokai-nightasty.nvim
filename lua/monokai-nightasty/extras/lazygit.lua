local util = require("monokai-nightasty.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local lazygit = util.template(
    [[
gui:
  nerdFontsVersion: "3"

  # Config relating to colors and styles.
  # See https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md#color-attributes
  theme:
    activeBorderColor:
      - "${blue}"
      - "bold"
    inactiveBorderColor:
      - "${grey}"
    searchingActiveBorderColor:
      - "${blue}"
      - "bold"
    optionsTextColor:
      - "${orange}"
    selectedLineBgColor:
      - "${bg_highlight}"
    cherryPickedCommitFgColor:
      - "${blue}"
    cherryPickedCommitBgColor:
      - "${magenta}"
    markedBaseCommitFgColor:
      - "${blue}"
    markedBaseCommitBgColor:
      - "${yellow}"
    unstagedChangesColor:
      - "${git.changed}"
    defaultFgColor:
      - "${fg}"
]],
    colors
  )
  return lazygit
end

return M
