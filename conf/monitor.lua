-- conf/monitor.lua

hl.monitor({ output = "HDMI-A-1", mode = "2560x1440@144",  position = "0x0",    scale = 1.0 })
hl.monitor({ output = "eDP-1",    mode = "1920x1080@144",  position = "2560x0", scale = 1.0 })

-- Auto-position external monitors (uncomment to use):
-- hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1.0 })

hl.on("monitor.added", function ()
    -- Switch to workspace 1
    hl.dispatch(hl.dsp.focus({ workspace = "1" }))

    -- XWayland: set HDMI-A-1 as primary
    hl.exec_cmd("xrandr --output HDMI-A-1 --primary")
end)
