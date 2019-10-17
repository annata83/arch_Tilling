# Scripts directory!

`~/.scripts/`.  Scripts are sorted into sub-directories for easy management, and all are seamlessly added to
`$PATH` with the command below in `~/.profile`:

```
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
```
## `cron/`
- `cronbat`
Gives a dunst notification if the battery is less than 25%.
- `crontog`
Not actually a cronjob, but just turns off/on all user cronjobs.

## `tools/`
- `dmenuhandler`
Give this script a url and it will offer dmenu options for opening it. Used by `newsboat` and some other programs as a link handler.
- `extract`  
Will detect file type of archive and run appropriate extraction command.- `getkeys`
Get the LARBS documentation on what bindings exist for main programs.
- `linkhandler`
The automatic link handler used by `newsboat` and other programs. Urls of video sites or of video files are opened in `mpv`, images are downloaded/opened in `feh`, music files are downloaded with `wget` and all other urls are opened in the default browser.
- `remaps`
Remaps capslock to escape when pressed and super/mod when held. Maps the menu key to super as well. Runs the US international keyboard setup. If you want another keyboard setup, edit this fine.



## `i3cmds`

- `bottomleft` and `bottomright`
Makes the currently selected window float in one of the bottom corners of the screen.
- `camtoggle`
Starts/kills /dev/video0 webcam. Placed in bottom right by default.
- `displayselect`
Select which displays to use.
- `dmenumount`
Gives a dmenu prompt for mounting USB drives or Android devices. Bound to `mod+F9`. Will do nothing if none are available.
- `dmenuumount`
Unmount a mounted non-essential partition. Bound to `mod+F10`. Will do nothing if none are mounted. It will not try to unmount essential system partitions.
- `newspod`
A silly line that has a script all to itself due to i3's idiosyncracies. Starts `newsboat`, if `newsboat` cannot open because of another instance being open, opens `podboat`.
- `prompt`
Gives a Yes/No prompt to a question given as an argument.Example:(exec --no-startup-id prompt "Shutdown computer?" "$shutdown")
- `samedir`
Opens a terminal window in the same directory as the window currently selection. Bound to `mod+shift+enter`.




