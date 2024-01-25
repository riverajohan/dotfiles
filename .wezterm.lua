-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.font_size = 12.7
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })
config.font_rules = {
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "Cascadia Code",
			weight = "Bold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Half",
		font = wezterm.font({
			family = "Cascadia Code",
			weight = "DemiBold",
			style = "Italic",
		}),
	},
	{
		italic = true,
		intensity = "Normal",
		font = wezterm.font({
			family = "Cascadia Code",
			style = "Italic",
		}),
	},
}

config.window_padding = {
	left = 1,
	right = 1,
	top = 0,
	bottom = 0,
}

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.color_scheme = "Catppuccin Frappe"
config.dpi = 144

-- and finally, return the configuration to wezterm
return config
