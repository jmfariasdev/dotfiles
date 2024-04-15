-- 2024 jmfariasdev (João Marcos Farias)
-- §§=> Awesome WM <=§§ config file.

-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, 'luarocks.loader')

-- Standard awesome library
local gears = require('gears')
local awful = require('awful')
require('awful.autofocus')
-- Theme handling library
local beautiful = require('beautiful')

--------------------------------------------------------------------------------------------

-- Error Handling
require('main/error-handling')

--------------------------------------------------------------------------------------------

-- [ Global Tables ]

MAIN = {}
MAIN.vars = require('main/user-variables')
MAIN.set_client_rules = require('main/client-rules')
MAIN.tools = require('main/tools')

APPC = {}
APPC.set_wallpaper = require('appearance/wallpaper')

KEYS = {}
KEYS.global = require('bindings/globalkeys')
KEYS.client = require('bindings/clientkeys')

BTNS = {}
BTNS.client = require('bindings/clientbuttons')
BTNS.tags = require('bindings/tagsbuttons')
BTNS.tasks = require('bindings/tasksbuttons')

--------------------------------------------------------------------------------------------

-- [ Theme ]
beautiful.init(gears.filesystem.get_configuration_dir () .. '/appearance/theme.lua')

--------------------------------------------------------------------------------------------

-- [ Prefered Layouts Options ]
awful.layout.layouts = require('main/layouts')

--------------------------------------------------------------------------------------------

-- [ Tags ]
require('main/tags')

--------------------------------------------------------------------------------------------

-- [ Statusbar ]
require('ui/statusbar')

--------------------------------------------------------------------------------------------

-- [ Signals ]
require('main/signals')

--------------------------------------------------------------------------------------------

-- [ Set Global keys ]
root.keys(KEYS.global)

--------------------------------------------------------------------------------------------

-- [ Client Rules ]

-- Rules to apply to new clients (through the 'manage' signal).
awful.rules.rules = MAIN.set_client_rules(KEYS.client, BTNS.client)

--------------------------------------------------------------------------------------------

-- [ Auto Start/Execute ]

awful.spawn(MAIN.vars.compositor)
os.execute('xset r rate 230 35') -- Set the keyboard delay & rate.
os.execute('xset led on') -- Turn on keyboard lights.

-- Prevent screen from turning off.
os.execute('xset s off')
os.execute('xset -dpms')
os.execute('xset s noblank')

--------------------------------------------------------------------------------------------
