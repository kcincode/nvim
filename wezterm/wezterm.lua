local wezterm = require("wezterm")
local config = {}

config.color_scheme = "rose-pine-moon"
config.colors = { background = "232136" }

config.font = wezterm.font("MesloLGS NF")
config.font_size = 16

config.initial_cols = 90
config.initial_rows = 32

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

-- config.default_prog = { "/opt/homebrew/bin/tmux", "new-session" }

return config
