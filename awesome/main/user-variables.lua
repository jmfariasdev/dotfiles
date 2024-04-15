
-- [ User Variables ]

local _U = {
  launcher = 'rofi -show drun',
	terminal = 'alacritty',
	editor = os.getenv('EDITOR') or 'nano',
	compositor = 'picom -b',
	browser = 'google-chrome-stable',
	modkey = 'Mod4' -- ( Super )
}

return _U
