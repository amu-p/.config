-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices.
-- general
config.default_domain = 'WSL:Ubuntu'
config.use_ime = true
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"

-- frame
config.front_end = "WebGpu"
config.window_decorations = 'INTEGRATED_BUTTONS'
config.window_background_opacity = 0.90
config.text_background_opacity = 0.90
config.use_fancy_tab_bar = true
config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}

config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false
-- config.show_tabs_in_tab_bar = false
config.colors = {
  tab_bar = {
    inactive_tab_edge = "None"
  }
}

-- colorscheme
local scheme = 'Night Owl (Gogh)'
config.color_scheme = scheme
config.window_background_gradient = {
  colors = { wezterm.get_builtin_color_schemes()[scheme].background },
}

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font = wezterm.font 'DepartureMono Nerd Font Mono'
config.font_size = 12
-- config.color_scheme = 'AdventureTime'

config.mouse_bindings =
{
  {
    event = { Drag = { streak = 1, button = "Left" } },
    ods = "NONE",
    action = act.ExtendSelectionToMouseCursor("Cell")
  },
  {
    event = { Up = { streak = 1, button = "Left" } },
    mods = "NONE",
    action = act.CopyTo("ClipboardAndPrimarySelection"),
  },
  {
    event = { Down = { streak = 1, button = "Right" } },
    mods = "NONE",
    action = act.PasteFrom("Clipboard"),
  },
}

config.keys =
{
  { key = 't', mods = 'CTRL|SHIFT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentTab { confirm = true } },
}

-- Finally, return the configuration to wezterm:
return config
