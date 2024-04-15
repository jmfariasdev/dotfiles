-- 2024 jmfariasdev (João Marcos Farias)
-- §§=> Awesome WM <=§§ theme config file.

local xresources = require('beautiful.xresources')
local dpi = xresources.apply_dpi
local gears = require('gears')

local themes_path = gears.filesystem.get_themes_dir() -- Fallback/Default path of things.

------------------------------------------------------------------------------------------------------

-- [ Theme Table ]

local theme = {}

------------------------------------------------------------------------------------------------------

-- [ General Customization ]

theme.font = 'Libre Franklin Medium 10'

theme.bg_normal = '#0c0d1d'
theme.bg_focus = '#151632'
theme.bg_urgent = '#ff0000'
theme.bg_minimize = '#444444'
theme.bg_systray = theme.bg_normal

theme.fg_normal = '#aaaaaa'
theme.fg_focus = '#ffffff'
theme.fg_urgent = '#ffffff'
theme.fg_minimize = '#ffffff'

theme.useless_gap = dpi(3)
theme.border_width = dpi(1)
theme.border_normal = '#151632'
theme.border_focus = '#0f2d63'
theme.border_marked = '#91231c'

------------------------------------------------------------------------------------------------------

-- [ Wibar ]

theme.wibar_bg = 'transparent'

------------------------------------------------------------------------------------------------------

-- [ Taglist ]

theme.taglist_container_bg = '#1a1b26'
theme.taglist_bg_focus = '#7dcfff'

theme.taglist_fg_focus = '#15161e'
theme.taglist_fg_occupied = '#a9b1d6'
theme.taglist_fg_empty = '#a9b1d6'

theme.taglist_font = 'Libre Franklin SemiBold 10'

------------------------------------------------------------------------------------------------------

-- [ Tasklist ]

theme.tasklist_plain_task_name = true

theme.tasklist_bg_normal = '#1a1b26'
theme.tasklist_bg_focus = '#15151e'
theme.tasklist_bg_minimize = '#001933'

------------------------------------------------------------------------------------------------------

-- [ Clock & Layout Icons ]

theme.clock_container_bg = '#1a1b26'

------------------------------------------------------------------------------------------------------


-- [ Wallpater ]

theme.wallpaper = gears.filesystem.get_configuration_dir() .. '/wallpapers/tokyo-city.jpg'

------------------------------------------------------------------------------------------------------

-- [ Layout Icons ]

theme.layout_fairh = themes_path .. 'default/layouts/fairhw.png'
theme.layout_fairv = themes_path .. 'default/layouts/fairvw.png'
theme.layout_floating = themes_path .. 'default/layouts/floatingw.png'
theme.layout_magnifier = themes_path .. 'default/layouts/magnifierw.png'
theme.layout_max = themes_path .. 'default/layouts/maxw.png'
theme.layout_fullscreen = themes_path .. 'default/layouts/fullscreenw.png'
theme.layout_tilebottom = themes_path .. 'default/layouts/tilebottomw.png'
theme.layout_tileleft = themes_path .. 'default/layouts/tileleftw.png'
theme.layout_tile = themes_path .. 'default/layouts/tilew.png'
theme.layout_tiletop = themes_path .. 'default/layouts/tiletopw.png'
theme.layout_spiral = themes_path .. 'default/layouts/spiralw.png'
theme.layout_dwindle = themes_path .. 'default/layouts/dwindlew.png'
theme.layout_cornernw = themes_path .. 'default/layouts/cornernww.png'
theme.layout_cornerne = themes_path .. 'default/layouts/cornernew.png'
theme.layout_cornersw = themes_path .. 'default/layouts/cornersww.png'
theme.layout_cornerse = themes_path .. 'default/layouts/cornersew.png'

------------------------------------------------------------------------------------------------------

-- [ Application Icons ] ( Default: /usr/share/icons and /usr/share/icons/hicolor )
theme.icon_theme = '~/.icons/Papirus/128x128/'

------------------------------------------------------------------------------------------------------

-- [ Forward Theme ]

return theme

------------------------------------------------------------------------------------------------------
