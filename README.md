# mount.yazi

This is a Yazi plugin for mounting volumes.

## Installation

Install the plugin:

```
ya pack -a SL-RU/mount
```

Clone and build `https://github.com/SL-RU/mmt`, copy the path of the compiled binary `mmt`.

In `~/.config/yazi/keymap.toml` add. But make sure that executable mmt is in the $PATH env variable:
```
[[manager.prepend_keymap]]
on   = "M"
run  = "plugin mount"
desc = "Mount manager"
```

If you need to set custom path for `mmt` add this and replace `/path/to/mmt` with your path:

```
[[manager.prepend_keymap]]
on   = "M"
run  = "plugin mount --args=/path/to/mmt"
desc = "Mount manager"
```
