
-- Awesome libs
local awful = require('awful')
local gears = require('gears')

--------------------------------------------------------------------------------------------------------

-- [ Client Keys Module ]

local modkey = MAIN.vars.modkey

local client_keys = gears.table.join(

  -- Client Full Screen Toggle
  awful.key({ modkey }, "f", function(c)
    c.fullscreen = not c.fullscreen
    c:raise()
  end, { description = "toggle fullscreen", group = "client" }),

  -- Client Close
  awful.key({ modkey, "Shift" }, "x", function(c)
    c:kill()
  end, { description = "close", group = "client" }),

  -- Client Floating Toggle
  awful.key(
    { modkey, "Control" },
    "space",
    awful.client.floating.toggle,
    { description = "toggle floating", group = "client" }
  ),

  -- Client Move to Master
  awful.key({ modkey, "Control" }, "Return", function(c)
    c:swap(awful.client.getmaster())
  end, { description = "move to master", group = "client" }),

  -- Client Set "On Top"
  awful.key({ modkey, "Shift" }, "t", function(c)
    c.ontop = not c.ontop
  end, { description = "toggle keep on top", group = "client" }),

  -- Client Minimize
  awful.key({ modkey }, "n", function(c)
    c.minimized = true
  end, { description = "minimize", group = "client" }),

  -- Client Expansion Binds
  awful.key({ modkey }, "m", function(c)
    c.maximized = not c.maximized
    c:raise()
  end, { description = "(un)maximize", group = "client" }),

  awful.key({ modkey, "Control" }, "m", function(c)
    c.maximized_vertical = not c.maximized_vertical
    c:raise()
  end, { description = "(un)maximize vertically", group = "client" }),

  awful.key({ modkey, "Shift" }, "m", function(c)
    c.maximized_horizontal = not c.maximized_horizontal
    c:raise()
  end, { description = "(un)maximize horizontally", group = "client" })
)

return client_keys

--------------------------------------------------------------------------------------------------------
