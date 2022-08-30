# This are my config files for my Arch rice. 
I am not a linux geek let alone an Arch expert so take my config files with a grain of salt.

## This repo has config file for:
- zsh
- vim
- tmux
- dmenu
- polybar
- picom
- neofetch
- kitty
- i3
> My `i3` uses `dmenu` as the dynamic menu (basically a launcher for all menu-items i.e. `firefox`). You can launch `dmenu` using `Mod3 + d` (Mod4 is the super key). `dmenu` is in another repository just clone [this](https://github.com/Philiks/dmenu.git) or you can build your own by applying different patches from [here](https://tools.suckless.org/dmenu/patches/). 

## Dependencies
### For zsh
You can `git clone` these plugins *but* I prefer to just download them using `wget` since changes to these plugins are not that often.

### [zsh-git-prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) to add git informations into your shell
**Installation Steps**<br />
Download the [raw file](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh)
```
$ wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
```
Create dir in `/usr/share/zsh/plugins/`
```
$ sudo mkdir /usr/share/zsh/plugins/zsh-git-prompt
```
Move `git-prompt.sh` inside `zsh-git-prompt`
```
$ sudo mv git-prompt.sh /usr/share/zsh/plugins/zsh-git-prompt/
```

### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) to add color highlighting to your shell commands
**Installation Steps (by following their guide)**<br />
Follow the [INSTALL.md](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) then `cp` the `zsh-syntax-highlighting` directory inside `src/` directory to `/usr/share/zsh/plugins`.<br />
<br />*or*<br />
<br />**Installation Steps**<br />
Download the [raw file](https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/zsh-syntax-highlighting.zsh)
```
$ wget https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/master/zsh-syntax-highlighting.zsh
```
Create dir in `/usr/share/zsh/plugins/`
```
$ sudo mkdir /usr/share/zsh/plugins/zsh-syntax-highlighting
```
Move `zsh-syntax-highlighting.zsh` inside `zsh-syntax-highlighting`
```
$ sudo mv zsh-syntax-highlighting.zsh /usr/share/zsh/plugins/zsh-syntax-highlighting/
```

### [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search/blob/master/zsh-history-substring-search.zsh) to add search capability based on `.zhistory`
**Installation Steps**<br />
Download the [raw file](https://raw.githubusercontent.com/zsh-users/zsh-history-substring-search/master/zsh-history-substring-search.zsh)
```
$ wget https://raw.githubusercontent.com/zsh-users/zsh-history-substring-search/master/zsh-history-substring-search.zsh
```
Create dir in `/usr/share/zsh/plugins/`
```
$ sudo mkdir /usr/share/zsh/plugins/zsh-history-substring-search
```
Move `zsh-history-substring-search.zsh` inside `zsh-history-substring-search`
```
$ sudo mv zsh-history-substring-search.zsh /usr/share/zsh/plugins/zsh-history-substring-search/
```

### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/zsh-autosuggestions.zsh) to add auto suggestion to your shell based on frequently used shell commands
**Installation Steps (by following their guide)**<br />
Follow the [INSTALL.md](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md) then `cp` the `zsh-autosuggestions` directory inside `src/` directory to `/usr/share/zsh/plugins`.<br />
<br />*or*<br />
<br />**Installation Steps**<br />
Download the [raw file](https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.zsh)
```
$ wget https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.zsh
```
Create dir in `/usr/share/zsh/plugins/`
```
$ sudo mkdir /usr/share/zsh/plugins/zsh-autosuggestions
```
Move `zsh-autosuggestions.zsh` inside `zsh-autosuggestions`
```
$ sudo mv zsh-autosuggestions.zsh /usr/share/zsh/plugins/zsh-autosuggestions/
```
<br />

**[imagemagick](https://imagemagick.org/script/download.php)** or for **[arch-based distros](https://archlinux.org/packages/?name=imagemagick)**<br />
You should also have `kitty` for `alias icat` to work.

### For Polybar
Put the `launch.sh` and `config` under `.config/polybar`.

**[siji-ng](https://aur.archlinux.org/packages/siji-ng/)**<br />
This siji font fixes the `warn: Dropping unmatched character `. Install this package from AUR if you're using Arch or Arch-based distro.<br />

**[fontawesome-free-5.15.4.zip](https://use.fontawesome.com/releases/v5.15.4/fontawesome-free-5.15.4-desktop.zip)**<br />
This is the fontawesome zip file. Run `$ unzip fontawesome-free-5.15.4-desktop.zip` to extract the compressed file. Then run:
```
$ sudo mkdir /usr/share/licences/fontawesome
$ sudo mkdir /usr/share/fonts/OTF
$ sudo mv ./fontawesome-free-5.15.4-desktop/LICENSE.txt /usr/share/licences/fontawesome
$ sudo mv ./fontawesome-free-5.15.4-desktop/otfs/Font\ Awesome\ 5\ Brands-Regular-400.otf /usr/share/fonts/OTF
$ sudo mv ./fontawesome-free-5.15.4-desktop/otfs/Font\ Awesome\ 5\ Free-Regular-400.otf /usr/share/fonts/OTF
$ sudo mv ./fontawesome-free-5.15.4-desktop/otfs/Font\ Awesome\ 5\ Free-Solid-900.otf /usr/share/fonts/OTF
```
> Note that you must have `unzip` to decompress the zip file. Although you can still use other decompresser package.
> Note that the directories your moving the files into must be created prior the `mv` command otherwise it will move the file but rename it with the last *folder*. i.e. moving `./fontawesome-free-5.15.4-desktop/LICENSE.txt` to `/usr/share/licences/fontawesome` whilst not having the `fontawesome` directory will rename the `LICENSE.txt` to `fontawesome`.

### For i3
**[escrotum](https://github.com/Roger/escrotum)**<br />
Install this from the AUR or follow their [installation](https://github.com/Roger/escrotum#install) guide.

### For tmux
> If `tmux` won't load the config file, place it inside *home* directory `~` then change the name to `.tmux.conf`. Lastly, run `tmux kill-server` to kill all tmux sessions.
