local utils = require("monokai-nightasty.utils")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local lazygit = utils.template(
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
      - "${diff.change}"
    defaultFgColor:
      - "${fg}"

  authorColors:
    "*": "${magenta}"
]],
    colors
  )
  return lazygit
end

return M
