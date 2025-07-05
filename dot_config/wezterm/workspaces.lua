local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local home_dir = wezterm.home_dir
	local tab, build_pane, window = mux.spawn_window({
		workspace = "default",
		cwd = home_dir,
	})

	-- Set a workspace for coding on a current project
	-- Top pane is for the editor, bottom pane is for the build tool
	local project_dir = wezterm.home_dir .. "/projects/apex/contrix_core_python"
	local tab, build_pane, window = mux.spawn_window({
		workspace = "contrix",
		cwd = project_dir,
	})
	local editor_pane = build_pane:split({
		direction = "Top",
		size = 0.8,
		cwd = project_dir,
	})
	local project_dir = wezterm.home_dir .. "/projects/apex/butterfly_station_python"
	local tab, build_pane, window = window:spawn_tab({
		cwd = project_dir,
	})
	local editor_pane = build_pane:split({
		direction = "Top",
		size = 0.8,
		cwd = project_dir,
	})

	-- We want to startup in the coding workspace
	mux.set_active_workspace("default")
end)
