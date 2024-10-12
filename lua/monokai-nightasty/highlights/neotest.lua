local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    NeotestAdapterName = { fg = c.green }, -- Adapter name and stats at the top
    NeotestDir = { fg = c.blue_alt }, -- Dirs with files with tests
    NeotestExpandMarker = { fg = c.grey }, --Tree-like lines nodes
    NeotestFailed = { fg = c.red }, --  mark on failed tests
    NeotestFile = { fg = c.blue }, -- Files with tests
    NeotestFocused = { fg = c.orange }, -- Current test name
    NeotestIndent = { fg = c.grey }, -- Tree-like lines
    NeotestMarked = { fg = c.yellow, bg = c.grey_medium, bold = true }, -- Marked tests (press m over the test)
    NeotestNamespace = { fg = c.magenta }, -- Test namespace, like lua "describe" with "it" inside
    NeotestPassed = { fg = c.green }, --  mark on passed tests
    NeotestRunning = { fg = c.note }, -- Totating icon during test execution
    NeotestSkipped = { fg = c.yellow }, --  mark on skipped test
    NeotestTarget = { fg = c.blue_alt }, -- press t over a namespace
    NeotestTest = { fg = c.grey_light }, -- Test names
    NeotestUnknown = { fg = c.grey_light }, --  mark before running tests
    NeotestWatching = { fg = c.yellow_alt },
    NeotestWinSelect = { fg = c.blue, bold = true },
  }
end

return M
