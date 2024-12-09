local wezterm = require("wezterm")
local config = {}

config.max_fps = 120

config.color_scheme = "catppuccin-mocha"

config.font = wezterm.font("MesloLGS NF")
config.font_size = 18
config.dpi = 144.0

config.initial_cols = 90
config.initial_rows = 25

config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

config.window_padding = {
	left = 2,
	right = 2,
	top = 15,
	bottom = 0,
}

return config
