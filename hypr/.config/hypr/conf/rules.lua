local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "teams",
	match = { class = "teams-for-linux" },
	float = true,
	workspace = 6,
})

hl.window_rule({
	name = "bluetui",
	match = { class = "bluetui" },
	float = true,
	size = { 800, 600 },
})
hl.window_rule({
	name = "pulsemixer",
	match = { class = "pulsemixer" },
	float = true,
	size = { 800, 600 },
})

hl.window_rule({
	name = "vesktop",
	match = { class = "vesktop" },
	float = true,
	size = { 1920, 1080 },
	center = true,
	workspace = 10,
})

hl.window_rule({
	name = "ferdium",
	match = { class = "Ferdium" },
	float = true,
	size = { 1920, 1080 },
	center = true,
	workspace = 9,
})

hl.window_rule({
	name = "AVD",
	match = { class = "xfreerdp" },
	fullscreen = true,
	size = { 3440, 1440 },
	float = true,
	workspace = 7,
	border_size = 0,
	rounding = false,
})

hl.window_rule({
	name = "Mattermost",
	match = { class = "Mattermost.Desktop" },
	workspace = 9,
	float = true,
	border_size = 0,
	rounding = false,
})

hl.window_rule({
	name = "Firefox",
	match = { class = "firefox" },
	workspace = 2,
})

hl.window_rule({
	name = "Jitsi",
	match = { class = "jitsi-meet" },
	workspace = 6,
	float = true,
	border_size = 0,
	rounding = false,
})

hl.window_rule({
	name = "Keepass",
	match = { class = "org.keepassxc.KeePassXC" },
	workspace = 8,
	float = true,
	size = { 800, 600 },
	border_size = 0,
	rounding = false,
})

hl.window_rule({
	name = "freerdp",
	match = { class = "tennet_avd" },
	workspace = 7,
	float = true,
	size = { 800, 600 },
	border_size = 0,
	rounding = false,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})
