
-- Awesome libs
local awful = require('awful')

--------------------------------------------------------------------------------

-- [ Awesome Layouts Module ]

-- Order matters.
local layouts = {
  awful.layout.suit.tile,
  awful.layout.suit.tile.left,
  awful.layout.suit.tile.bottom,
  awful.layout.suit.tile.top,
  awful.layout.suit.magnifier,
  awful.layout.suit.floating,
}

return layouts

--------------------------------------------------------------------------------
