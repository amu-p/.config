-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices.
config.default_domain = 'WSL:Ubuntu'
config.mouse_bindings = {
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

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font = wezterm.font 'DepartureMono Nerd Font Mono'
config.font_size = 12
config.color_scheme = 'AdventureTime'

config.keys = {
  { key = 't', mods = 'CTRL|SHIFT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentTab { confirm = true } },
}

-- Finally, return the configuration to wezterm:
return config
