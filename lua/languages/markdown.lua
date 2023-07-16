M = {}

-- call Highlight('markdownCode', { 'fg': s:purple, 'bg': s:none, 'style': s:bold })
-- call Highlight('markdownCodeDelimiter', { 'fg': s:light_green })
-- call Highlight('markdownLinkTextDelimiter', { 'fg': s:light_blue })
-- call Highlight('markdownLinkDelimiter', { 'fg': s:light_blue })
-- call Highlight('markdownUrl', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
-- call Highlight('markdownListMarker', { 'fg': s:light_blue })
-- call Highlight('mkdHeading', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
-- call Highlight('mkdURL', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
-- call Highlight('mkdCode', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
-- call Highlight('mkdCodeStart', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
-- call Highlight('mkdCodeEnd', { 'fg': s:light_green, 'bg': s:none, 'style': s:none })
-- call Highlight('mkdDelimiter', { 'fg': s:light_blue })
-- call Highlight('mkdListItemCheckbox', { 'fg': s:light_blue })
-- call Highlight('mkdCodeDelimiter', { 'fg': s:purple })

-- this should be in monokai.lua
local import_language = function(language, palette)
    for group, style in pairs(language) do
        language.group.style = palette -- TODO:
    end
end
