##### Este archivo contiene comandos personales y/o interesantes para mi

##Linux


####Usefull commands I have come accross

`dmesg`                      //print or control the kernel ring buffer
`gtk-demo`                   //Use esto para colorPicker dentro del Desktop
`xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }` // print key pressed at keyboard using xen 
`lsb_releass/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }' -rd`            // Echo wich current  linux  realese version Iam using
 `gucharmap`        // fonts caracter guio explorer 
 `killall dunst;notify-send foo` // signal to reload dnust
##Yarn
`yarn global`                //Install packages globally on your operating system   

#mirror list manteniemiento:
#	runs reflector, which
#	finds the mirrors updated in last 8 hours
#	sorts them by download rate (speed)
#	selects the best 128 from them
#	from those 128 selects 64 updated most recently
#	from those 64 takes the best | fastest 32
#	writes the ready-to-use /etc/pacman.d/mirrorlist
# USES REFLECTOR "APP"
sudo reflector --age 8 --fastest 128 --latest 64 --number 32 --sort rate --save /etc/pacman.d/mirrorlist


# Aplication

#FZF
Using the finder
CTRL-J / CTRL-K (or CTRL-N / CTRL-P) to move cursor up and down
Enter key to select the item, CTRL-C / CTRL-G / ESC to exit
On multi-select mode (-m), TAB and Shift-TAB to mark multiple items
Emacs style key bindings
Mouse: scroll, click, double-click; shift-click and shift-scroll on multi-select mode
Layout
fzf by default starts in fullscreen mode, but you can make it start below the cursor with --height option.

vim $(fzf --height 40%)
Also check out --reverse option if you prefer "top-down" layout instead of the default "bottom-up" layout.

vim $(fzf --height 40% --reverse)
You can add these options to $FZF_DEFAULT_OPTS so that they're applied by default. For example,

export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
Search syntax
Unless otherwise specified, fzf starts in "extended-search mode" where you can type in multiple search terms delimited by spaces. e.g. ^music .mp3$ sbtrkt !fire

Token	Match type	Description
sbtrkt	fuzzy-match	Items that match sbtrkt
^music	prefix-exact-match	Items that start with music
.mp3$	suffix-exact-match	Items that end with .mp3
'wild	exact-match (quoted)	Items that include wild
!fire	inverse-exact-match	Items that do not include fire
!.mp3$	inverse-suffix-exact-match	Items that do not end with .mp3

#YUTUBE-DL
Download best video and audio available thru direct http protocol
youtube-dl -f '(bestvideo+bestaudio/best)[protocol^=http]' urlhere

## Keyboard Layout tool
xmodmap -pke

## Sourcing

# Tmux
tmux source-file ~/.tmux.conf

#udemy-dl
python udemy-dl.py --cookie=cookie.txt "https://"
 
 
#npm
 
# remove all install global npm packages
npm ls -gp --depth=0 | awk -F/node_modules/ '{print $2}' | grep -vE '^(npm|)$' | xargs -r npm -g rm


# How To Find Exact Installation Date And Time Of Your Linux OS:
# Do as Root:
fs=$(df / | tail -1 | cut -f1 -d' ') && tune2fs -l $fs | grep created
