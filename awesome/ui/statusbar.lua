
-- Awesome libs
local awful = require('awful')
local gears = require('gears')
local wibox = require('wibox')
local beautiful = require('beautiful')

----------------------------------------------------------------------------------------

-- [ Statusbar Module ]

-- Clock widget
local textclock = wibox.widget.textclock()
textclock.format = '<span foreground="#a9b1d6" font="Libre Franklin Bold 10"> %a %b %d   %H:%M </span>'

-- Apply Statusbar to all screens.
awful.screen.connect_for_each_screen(function (s)

  -- Set wallpaper for each screen.
  APPC.set_wallpaper(s)

  -- Create an imagebox widget which will contain an icon indicating which layout is active.
  -- We need one layoutbox per screen.
  s.layoutbox = awful.widget.layoutbox(s)
  s.layoutbox:buttons(gears.table.join(
    awful.button({}, 1, function()
      awful.layout.inc(1)
    end),
    awful.button({}, 3, function()
      awful.layout.inc(-1)
    end)
  ))

  -- Create a taglist widget
  s.taglist = awful.widget.taglist({
    screen = s,
    filter = awful.widget.taglist.filter.all,
    buttons = BTNS.tags,
    style = {
      shape = gears.shape.rounded_bar
    },
    widget_template = {
      {
        {
          {
            id = 'text_role',
            widget = wibox.widget.textbox,
          },
          layout = wibox.layout.fixed.horizontal,
        },
        left = 15,
        right = 15,
        widget = wibox.container.margin
      },
      id = 'background_role',
      shape = gears.shape.rounded_bar,
      widget = wibox.container.background,
    }
  })

  -- Create a tasklist widget
  s.tasklist = awful.widget.tasklist({
    screen = s,
    filter = awful.widget.tasklist.filter.currenttags,
    buttons = BTNS.tasks,
    style = {
      disable_task_name = true,
      shape = gears.shape.rounded_bar
    },
    layout = {
      spacing = 5,
      layout = wibox.layout.flex.horizontal
    },
    widget_template = {
      {
        {
          id = 'icon_role',
          widget = wibox.widget.imagebox
        },
        top = 5,
        bottom = 5,
        left = 20,
        right = 20,
        widget = wibox.container.margin
      },
      id = 'background_role',
      widget = wibox.container.background,
    }
  })

  -- Create the wibox ( Top Widget Bar )
  s.statusbar = awful.wibar({ position = 'top', screen = s, height = 43 })

  -- Add widgets to the wibox
  s.statusbar:setup({
    layout = wibox.container.margin,
    top = 10,
    left = 20,
    right = 20,
    {
      layout = wibox.layout.align.horizontal,
      expand = 'none',
      { -- Left
        layout = wibox.layout.fixed.horizontal,
        {
          widget = wibox.container.background,
          shape = gears.shape.rounded_bar,
          bg = beautiful.taglist_container_bg,
          s.taglist,
        }
      },
      s.tasklist,
      { -- Right
        {
          widget = wibox.container.margin,
          top = 5,
          bottom = 5,
          left = 20,
          right = 20,
          {
            layout = wibox.layout.fixed.horizontal,
            spacing = 10,
            textclock,
            s.layoutbox,
          }
        },
        id = 'background_role',
        shape = gears.shape.rounded_bar,
        bg = beautiful.clock_container_bg,
        widget = wibox.container.background,
      }
    }
  })

end)
