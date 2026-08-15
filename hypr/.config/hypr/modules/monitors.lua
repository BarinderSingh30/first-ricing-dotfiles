------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = "auto",
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1440x900@60",
    position = "0x-900",
    scale = "auto"
})

-- Workspaces 1-5 on Hdmi screen
hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({ workspace = "3", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1", persistent = true})
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1", persistent = true})

-- Workspaces 6-10 on Laptop screen
hl.workspace_rule({ workspace = "6", monitor = "eDP-1", persistent = true})
hl.workspace_rule({ workspace = "7", monitor = "eDP-1", persistent = true})
hl.workspace_rule({ workspace = "8", monitor = "eDP-1", persistent = true})
hl.workspace_rule({ workspace = "9", monitor = "eDP-1", persistent = true})
hl.workspace_rule({ workspace = "10", monitor = "eDP-1", persistent = true})