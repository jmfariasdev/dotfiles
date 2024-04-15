
-- Awesome libs
local awful = require('awful')

--------------------------------------------------------------------------------

-- [ Tags Module ]

awful.screen.connect_for_each_screen(function(s)

  local names = { 'Home', 'Work', 'Preview' }
  local l = awful.layout.suit
  local layouts = { l.floating, l.floating, l.floating }
  awful.tag(names, s, layouts)

end)

--------------------------------------------------------------------------------
