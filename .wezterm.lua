local wezterm = require("wezterm")
local act = wezterm.action

------- Keybindings -------
--
---- LEADER =&gt; C-a
--
-- LEADER + r =&gt; reload configuration
--
-- CMD + c,v =&gt; Copy, paste
-- CMD + LeftArrow =&gt; Switch to left Tab
-- CMD + RightArrow =&gt; Switch to right Tab
-- CMD + t =&gt; Create new tab using current pane domain (same directory)
-- OPTION + [,] =&gt; Move active tab
-- OPTION + ` =&gt; Show pane selector
--
-- LEADER + | =&gt; Split pane horizontal (left | right)
-- LEADER + _ =&gt; Split pane vertical (top | bottom)
--
-- OPTION + SHIFT + H,J,K,L =&gt; Resize active pane
-- OPTION + h,j,k,l =&gt; Switch active pane
-- OPTION + w =&gt; Close current pane

return {
	front_end = "WebGpu",
	check_for_updates = true,
	font_size = 15,
	line_height = 1.25,
	-- cell_width = 1.1,
 -- font = wezterm.font("Monaspace Neon NF"),
    font = wezterm.font("Monaspace Argon NF"),
	-- font = wezterm.font("JetBrainsMono Nerd Font"),
	-- font = wezterm.font("Zed Mono"),
	-- font = wezterm.font("Zed Mono", { stretch = "Expanded" }),
	-- font = wezterm.font("BlexMono Nerd Font"),
	-- font = wezterm.font("Fira Code", { stretch = "Normal", weight = "Regular" }),
	-- font = wezterm.font("Hack Nerd Font Mono"),
	-- font = wezterm.font("Iosevka", { stretch = "Expanded", weight = "Regular" }),
	-- font = wezterm.font("Operator Mono Lig", { weight = 325 }),
	send_composed_key_when_left_alt_is_pressed = true,
	send_composed_key_when_right_alt_is_pressed = true,
	disable_default_key_bindings = true,
	native_macos_fullscreen_mode = true,
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = {
		{
			key = "n",
			mods = "ALT",
			action = wezterm.action.ToggleFullScreen,
		},
		-- Reload config
		{
			key = "r",
			mods = "LEADER",
			action = act.ReloadConfiguration,
		},
		-- Create new tab
		{
			key = "t",
			mods = "CMD",
			action = act.SpawnTab("CurrentPaneDomain"),
		},
		{
			key = "T",
			mods = "CMD",
			action = act.SpawnTab("DefaultDomain"),
		},
		-- Paste/Copy
		{
			key = "v",
			mods = "CMD",
			action = act.PasteFrom("Clipboard"),
		},
		{
			key = "c",
			mods = "CMD",
			action = act.CopyTo("ClipboardAndPrimarySelection"),
		},
		-- Tab switching mappings
		{
			key = "LeftArrow",
			mods = "SUPER",
			action = act.ActivateTabRelative(-1),
		},
		{
			key = "RightArrow",
			mods = "SUPER",
			action = act.ActivateTabRelative(1),
		},
		-- Pane splitting mappings
		{
			key = "|",
			mods = "LEADER",
			action = act.SplitHorizontal({
				domain = "CurrentPaneDomain",
			}),
		},
		{
			key = "-",
			mods = "LEADER",
			action = act.SplitVertical({
				domain = "CurrentPaneDomain",
			}),
		},
		-- Pane size adjustment mappings
		{
			key = "H",
			mods = "ALT",
			action = act.AdjustPaneSize({ "Left", 5 }),
		},
		{
			key = "L",
			mods = "ALT",
			action = act.AdjustPaneSize({ "Right", 5 }),
		},
		{
			key = "K",
			mods = "ALT",
			action = act.AdjustPaneSize({ "Up", 5 }),
		},
		{
			key = "J",
			mods = "ALT",
			action = act.AdjustPaneSize({ "Down", 5 }),
		},
		-- Pane switching mappings
		{
			key = "h",
			mods = "ALT",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "ALT",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "ALT",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "ALT",
			action = act.ActivatePaneDirection("Down"),
		},
		{
			key = "w",
			mods = "ALT",
			action = act.CloseCurrentPane({ confirm = true }),
		},
		-- Move tab mapping
		{
			key = "]",
			mods = "ALT",
			action = act.MoveTabRelative(1),
		},
		{
			key = "[",
			mods = "ALT",
			action = act.MoveTabRelative(-1),
		},

		-- Show pane selector
		{
			key = "`",
			mods = "ALT",
			action = act.PaneSelect({
				mode = "Activate",
			}),
		},
	},
}

