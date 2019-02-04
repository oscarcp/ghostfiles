# Sway WM configurations

To install this configurations in your system copy the **content** of the folder
*"sway_wm"* into your home's *.config/sway* folder, then reload your sway
configuration (usually **Mod+Shift+C**)

**REMEMBER**

If you have previous configurations this will overwrite them or collide with
some of your shortcut definitions, make sure to backup your configurations first!

# Requirements

This configurations use the following software/fonts/things:

* Terminator (terminal emulator)
* rofi (software launcher, similar to dmenu)
* i3lock (for an alternative configuration of the lockscreen)
* Terminus (TTF) font

# Keybindings (case insensitive)

You will find that most of this keybindings are the same as the default ones
with some additions made by me.

*Mod* key is mapped to Windows key

* **Mod + Enter** New terminal
* **Mod + L** Lock screen
* **Mod + 0..9** Change current workspace
* **Mod + Shift + 0..9** Move current window to designated workspace
* **Mod + B** Horizontal layout
* **Mod + V** Vertical layout
* **Mod + S** Stacking leyout
* **Mod + E** Toggle split layout
* **Mod + W** Tabbed layout
* **Mod + A** Focus on parent container
* **Mod + X** Run dialog
* **Mod + F** Make current window fullscreen
* **Mod + Space** Swap focus between tiling and floating
* **Mod + Shift + Space** Toggle floating mode
* **Mod + Shift + Q** Quit program
* **Mod + Shift + E** Exit Sway
* **Mod + Shift + C** Reload Sway configuration
* **Mod + Tab** Next workspace
* **Mod + Shift + Tab** Previous workspace
* **Mod + Shift + -** Move window to scratchpad
* **Mod + -** Show scratchpad
* **Mod + Left/Right/Up/Down** Move focus of the window
* **Mod + Shift + Left/Right/Up/Down** Move the focused window in the workspace

# Resize mode

To resize windows, you must enter resize mode, with the **Mod + R** keybinding. After
you enter resize mode you can resize windows with *Left/Right/Up/Down* keys, and
press *enter* or *escape* to return to default mode.
