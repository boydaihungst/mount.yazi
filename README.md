# mount.yazi

This is a Yazi plugin for mounting volumes.

## Installation

Install the plugin:

```
ya pack -a SL-RU/mount
```

In `~/.config/yazi/keymap.toml` add:

```
[[manager.prepend_keymap]]
on   = "M"
run  = "plugin mount"
desc = "Mount manager"
```
