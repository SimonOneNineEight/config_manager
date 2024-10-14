local wezterm = require("wezterm")

local config = wezterm.config_builder()
local action = wezterm.action

config.font_size = 18
config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = "DemiBold", stretch = "Normal", style = "Normal" }) -- /Users/simon198/Library/Fonts/FiraCodeNerdFontMono-Light.ttf, CoreText

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8

config.color_scheme = "Snazzy"

-- Cursor Movement
config.keys = {
	-- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
	{
		key = "LeftArrow",
		mods = "OPT",
		action = action.SendKey({
			key = "b",
			mods = "ALT",
		}),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = action.SendKey({ key = "f", mods = "ALT" }),
	},
	{ mods = "CMD", key = "LeftArrow", action = action.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = action.SendKey({ mods = "CTRL", key = "e" }) },
	{ mods = "CMD", key = "Backspace", action = action.SendKey({ mods = "CTRL", key = "u" }) },
}

return config
