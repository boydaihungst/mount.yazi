# mount.yazi

This is a Yazi (v25.5.28) plugin for mounting volumes.

![](screencast.gif)

## Installation

Install the plugin:

```
ya pkg add boydaihungst/mount
# or
ya pack -a boydaihungst/mount
```

Download latest pre-compiled binary here: https://github.com/SL-RU/mmtui/releases

Or clone and build from source `https://github.com/SL-RU/mmtui`, copy the path of the compiled binary `mmtui`.

In `~/.config/yazi/keymap.toml` add. But make sure that executable mmtui is in the $PATH env variable:

```
[[mgr.prepend_keymap]]
on   = "M"
run  = "plugin mount"
desc = "Mount manager"
```

If you need to set custom path for `mmtui` add this and replace `/path/to/mmtui` with your path:

```
[[mgr.prepend_keymap]]
on   = "M"
run  = "plugin mount --args=/path/to/mmtui"
desc = "Mount manager"
```
