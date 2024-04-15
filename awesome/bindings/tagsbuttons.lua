
-- Awesome libs
local awful = require('awful')
local gears = require('gears')

-- [ Tags Mouse Actions Module ]

----------------------------------------------------------------------------------------

local tags_mouse_actions = gears.table.join(
  awful.button({}, 1, function(t) t:view_only() end) -- 1 = left click.
)

return tags_mouse_actions

----------------------------------------------------------------------------------------
