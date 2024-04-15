
-- Awesome libs
local gears = require("gears")
local awful = require("awful")

--------------------------------------------------------------------------------------------------------

-- [ Globalkeys Module ]

local modkey = MAIN.vars.modkey

local global_keys = gears.table.join(

  -- Awesome WM
  awful.key({ modkey, "Control" }, "r", awesome.restart, { description = "reload awesome", group = "awesome" }),
  awful.key({ modkey, "Shift" }, "q", awesome.quit, { description = "quit awesome", group = "awesome" }),

  -- Programs Launch Binds
  awful.key({ modkey }, "t", function()
    awful.spawn(MAIN.vars.terminal)
  end, { description = "open a terminal", group = "launcher" }),
  awful.key({ modkey }, "b", function()
    awful.spawn(MAIN.vars.browser)
  end),

  -- Launcher Prompt
  awful.key({ modkey }, "e", function()
    os.execute(MAIN.vars.launcher)
  end),

  -- Client Focus Switching
  awful.key({ modkey }, "k", function()
    awful.client.focus.byidx(1)
  end, { description = "focus next by index", group = "client" }),

  awful.key({ modkey }, "j", function()
    awful.client.focus.byidx(-1)
  end, { description = "focus previous by index", group = "client" }),

  -- Client Tab Focus Switch
  awful.key({ modkey }, "Tab", function()
    awful.client.focus.history.previous()
    if client.focus then
      client.focus:raise()
    end
  end, { description = "go back", group = "client" }),

  -- Client Width Manipulation
  awful.key({ modkey }, "l", function()
    awful.tag.incmwfact(0.05)
  end, { description = "increase master width factor", group = "layout" }),
  awful.key({ modkey }, "h", function()
    awful.tag.incmwfact(-0.05)
  end, { description = "decrease master width factor", group = "layout" }),

  -- Client Swap
  awful.key({ modkey, "Shift" }, "j", function()
    awful.client.swap.byidx(1)
  end, { description = "swap with next client by index", group = "client" }),

  awful.key({ modkey, "Shift" }, "k", function()
    awful.client.swap.byidx(-1)
  end, { description = "swap with previous client by index", group = "client" }),

  -- Increase & Decrease Number of Master Clients
  awful.key({ modkey, "Shift" }, "h", function()
    awful.tag.incnmaster(1, nil, true)
  end, { description = "increase the number of master clients", group = "layout" }),
  awful.key({ modkey, "Shift" }, "l", function()
    awful.tag.incnmaster(-1, nil, true)
  end, { description = "decrease the number of master clients", group = "layout" }),

  -- Layout Type Switching
  awful.key({ modkey }, "space", function()
    awful.layout.inc(1)
  end, { description = "select next", group = "layout" }),
  awful.key({ modkey, "Shift" }, "space", function()
    awful.layout.inc(-1)
  end, { description = "select previous", group = "layout" }),

  -- Unminimize Clients
  awful.key({ modkey, "Control" }, "n", function()
    local c = awful.client.restore()
    -- focus restored client
    if c then
      c:emit_signal("request::activate", "key.unminimize", { raise = true })
    end
  end, { description = "restore minimized", group = "client" }),

  -- Tags Switching
  awful.key({ modkey }, "a", awful.tag.viewprev, { description = "view previous", group = "tag" }),
  awful.key({ modkey }, "d", awful.tag.viewnext, { description = "view next", group = "tag" }),
  awful.key({ modkey }, "s", awful.tag.history.restore, { description = "go back", group = "tag" }),

  -- Tags Columns Manipulation
  awful.key({ modkey, "Control" }, "h", function()
    awful.tag.incncol(1, nil, true)
  end, { description = "increase the number of columns", group = "layout" }),
  awful.key({ modkey, "Control" }, "l", function()
    awful.tag.incncol(-1, nil, true)
  end, { description = "decrease the number of columns", group = "layout" })
)

-- Tags Number Binds
for i = 1, 9 do
  global_keys = gears.table.join(
    global_keys,
    -- View tag only.
    awful.key({ modkey }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        tag:view_only()
      end
    end, { description = "view tag #" .. i, group = "tag" }),
    -- Toggle tag display.
    awful.key({ modkey, "Shift" }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        awful.tag.viewtoggle(tag)
      end
    end, { description = "toggle tag #" .. i, group = "tag" }),
    -- Move client to tag.
    awful.key({ modkey, "Control" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end
    end, { description = "move focused client to tag #" .. i, group = "tag" }),
    -- Toggle tag on focused client.
    awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:toggle_tag(tag)
        end
      end
    end, { description = "toggle focused client on tag #" .. i, group = "tag" })
  )
end

return global_keys

--------------------------------------------------------------------------------------------------------
