# Dotfiles for my linux system

Dotfiles for my Void\* linux system.


- WM: i3-gaps
- Compositor: Compton
- Bar: Polybar
- Notifications: Dunst
- Menus: Rofi
- Editor: Neovim
- Lock Screen: betterlockscreen
- Terminal: Luke Smith's build of st
- GTK Theme: [Obscure-Green](https://www.gnome-look.org/p/1254680)
- GTK Icons: [Green-Maia](https://www.opendesktop.org/p/1218961/)
- qt4/5 applications should be able to use the GTK2 theme, if not, install `qt5-styleplugins`


## Installation
```
git clone https://github.com/mamba2410/void-dots
cd void-dots
./install
```
Then follow the prompts on screen.

## Update
It is advised to create a new branch and commit any changes to that branch.
```
git checkout -b myBranch
```
This allows for easy updating with
```
git checkout master
git pull
git checkout myBranch
git rebase master

```

## What the scripts do
- `install` is the main install script. It allows the user to create a new customised home tree (see MOre Customisation), it prompts the user to move the repository and then passes over to `linkfiles`.
- `linkfiles` is what manages the symlinks between your home directory and the repository. It asks the user if they would like to move, delete or update the links.
	To add or remove a file from linking, see More Customisation for details.
	`linkfiles` can take three arguments:
	- `source` - The source directory for installation. Defaults to the users current working directory.
	- `dest` - The destination directory to link to. Defaults to `$HOME`.
	- `old_dots` - The directory of where to store the old dotfiles. Defaults to `$HOME/.old_dots/<current-time>`

## More Customisation
The `targets` file allows the user to remove targets to symlink when running `linkfiles`. The paths are relative to `source` and `dest`.
Note that a symlink will not be removed on next `./linkfiles`. This will have to me manually removed if it exists.

The `dirs` file contains the directories to be created when `install` is run. The directories are relative to `$HOME` and the user may change them as they so choose.

## Branches
- `master` - The main branch where all commits are
- `thinkpad` - A branch with commit patches for a Thinkpad X230
- `dwm` - Experimenting with changing to dwm

Other branches may be added in the future, like a non-gui branch for headless systems.
