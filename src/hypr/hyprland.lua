hl.monitor({
  output   = "",
  mode     = "preferred",
  position = "auto",
  scale    = 1,
})

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.on("hyprland.start", function()
  hl.exec_cmd("copyq")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
end)

hl.config({
  general = {
    gaps_in  = 0,
    gaps_out = 0,

    border_size = 0,

    layout = "scrolling"
  },

  decoration = {
    rounding       = 2,

    active_opacity   = 1.0,
    inactive_opacity = 0.7,

    blur = {
      enabled   = true,
      size      = 3,
      passes    = 1,
    },
  },

  input = {
    kb_layout  = "us,latam",

    repeat_rate = 50,
    repeat_delay = 250,

    sensitivity = 0.5,
    accel_profile = "flat",

    follow_mouse = 1,

    touchpad = {
      natural_scroll = true,
    },
  },

  cursor = {
    inactive_timeout = 5;
    hide_on_key_press = true;
  },

  animations = {
    enabled = true,
  },

  misc = {
    disable_hyprland_logo   = true,
    disable_splash_rendering = true;
    layers_hog_keyboard_focus = true,
  },

  binds = {
    workspace_back_and_forth = true
  }
})

hl.animation({ leaf = "global",        enabled = true,  speed = 1, bezier = "default" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1, bezier = "default", style = "slidevert" })

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
  scrolling = {
    fullscreen_on_one_column = true,
  },
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace"
})

-- Exit Hyprland
hl.bind("SUPER + SHIFT + escape", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

-- Hypr*
hl.bind("SUPER + Super_L", hl.dsp.exec_cmd("hyprlauncher"))
hl.bind("SUPER + CTRL + l", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + C", hl.dsp.exec_cmd("hyprpicker -a"))

-- Close active
hl.bind("SUPER + X", hl.dsp.window.close())

-- Dismiss mako notifications
hl.bind("escape", hl.dsp.exec_cmd("makoctl dismiss -a"), { non_consuming = true })

-- Terminal (kitty)
hl.bind("SUPER + semicolon", hl.dsp.exec_cmd("kitty"))

-- pavucontrol
hl.bind("SUPER + A", hl.dsp.exec_cmd("pavucontrol"))

-- flameshot
hl.bind("SUPER + P", hl.dsp.exec_cmd("flameshot gui"))

-- Switch keyboard layout
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("hyprctl switchxkblayout current next"))

-- Workspace navigation
hl.bind("SUPER + H",  hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + J", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + K",   hl.dsp.focus({ workspace = "e-1" }))

-- Window manipulation
hl.bind("SUPER + SHIFT + H", hl.dsp.layout("swapcol l"))
hl.bind("SUPER + SHIFT + L", hl.dsp.layout("swapcol r"))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ workspace = "+1" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ workspace = "-1" }))

-- Fullscreen
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- Switch workspaces with "SUPER" + [0-9]
-- Move active window to a workspace with "SUPER" + SHIFT + [0-9]
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind("SUPER + " .. key,             hl.dsp.focus({ workspace = i}))
  hl.bind("SUPER + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end
