-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "Liquid Carbon Transparent (Gogh)"
config.font_size = 16.0
config.line_height = 1.2

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.87

-- and finally, return the configuration to wezterm
return config
