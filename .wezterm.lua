local wezterm = require 'wezterm'

local config = wezterm.config_builder()


config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font "JetBrains Mono"
config.font_size = 16.0
config.enable_tab_bar = false

return config
