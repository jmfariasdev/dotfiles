
-- Awesome libs
local awful = require('awful')
local gears = require('gears')

------------------------------------------------------------------------------

-- [ Tasks Buttons Module ]

-- Task List Buttons Mouse Actions.
local tasklist_buttons = gears.table.join(
  -- select.
  awful.button({}, 1, function(c)
    if c == client.focus then
      c.minimized = true
    else
      c:emit_signal("request::activate", "tasklist", { raise = true })
    end
  end),
  -- show tasks list.
  awful.button({}, 3, function()
    awful.menu.client_list({ theme = { width = 250 } })
  end)
)

return tasklist_buttons

------------------------------------------------------------------------------
