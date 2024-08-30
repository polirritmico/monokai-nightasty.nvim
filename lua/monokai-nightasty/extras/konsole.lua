local utils = require("monokai-nightasty.utils")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  ---@type ColorScheme
  local rgb_colors = {}
  for name, value in pairs(colors) do
    if type(value) == "string" then
      local color = utils.hex_to_rgb(value)
      rgb_colors[name] = string.format("%s,%s,%s", color[1], color[2], color[3])
    end
  end
  rgb_colors["_style_name"] = colors["_style_name"]
  rgb_colors["_upstream_url"] = colors["_upstream_url"]

  local konsole = utils.template(
    [=[
;; name: ${_style_name}
;; license: MIT
;; author: Eduardo Bray
;; upstream: ${_upstream_url}
;; instructions: Copy into $XDG_DATA_HOME/konsole/

[Background]
Color=${bg}

[BackgroundFaint]
Color=${terminal_black}

[BackgroundIntense]
Color=${terminal_black}

[Color0]
Color=${black}

[Color0Faint]
Color=${terminal_black}

[Color0Intense]
Color=${terminal_black}

[Color1]
Color=${red}

[Color1Faint]
Color=${red}

[Color1Intense]
Color=${red}

[Color2]
Color=${green}

[Color2Faint]
Color=${green}

[Color2Intense]
Color=${green}

[Color3]
Color=${yellow}

[Color3Faint]
Color=${yellow}

[Color3Intense]
Color=${orange}

[Color4]
Color=${blue}

[Color4Faint]
Color=${blue}

[Color4Intense]
Color=${blue}

[Color5]
Color=${magenta}

[Color5Faint]
Color=${magenta}

[Color5Intense]
Color=${magenta}

[Color6]
Color=${blue_alt}

[Color6Faint]
Color=${blue_alt}

[Color6Intense]
Color=${blue_alt}

[Color7]
Color=${fg_dark}

[Color7Faint]
Color=${fg}

[Color7Intense]
Color=${fg}

[Foreground]
Color=${fg_dark}

[ForegroundFaint]
Color=${fg_dark}

[ForegroundIntense]
Color=${fg}

[General]
Anchor=0.5,0.5
Blur=false
ColorRandomization=false
Description=${_style_name}
FillStyle=Tile
Opacity=1
Wallpaper=
WallpaperFlipType=NoFlip
WallpaperOpacity=1
]=],
    rgb_colors
  )

  return konsole
end

return M
