# void-dots

Dotfiles for my Void Linux system.

- WM: my build of [dwm](https://dwm.suckless.org/)
- Compositor: [picom](https://github.com/yshui/picom)
- Bar: dwm (plans to use dwmblocks)
- Notifications: [Dunst](https://dunst-project.org/)
- Menus: [Rofi](https://github.com/davatorium/rofi)
- Editor: [Neovim](https://neovim.io/)
- Lock Screen: [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
- Terminal: my build of [st](https://dwm.suckless.org/)
- GTK Theme: [Obscure-Green](https://www.gnome-look.org/p/1254680)
- GTK Icons: [Green-Maia](https://www.opendesktop.org/p/1218961/)
- qt4/5 applications should be able to use the GTK2 theme, if not, install `qt5-styleplugins`


## Installation
```
git clone https://github.com/mamba2410/void-dots
cd void-dots
# edit `targets` and `dirs` if you want
./install
```
Then follow the prompts on screen.


## What the scripts do
- `install` is the main install script. It allows the user to create a new customised home tree
    (see [more customisation](#more-customisation)). It prompts the user to move the repository and
    then passes over to `linkfiles`.
- `linkfiles` is what manages the symlinks between your home directory and the repository.
    (see [more customisation](#more-customisation)).
    It asks the user if they would like to move, delete or update the links.
	`linkfiles` takes three arguments:
	- `source` - The source directory for installation. Defaults to the users current working directory.
	- `dest` - The destination directory to link to. Defaults to `$HOME`.
	- `old_dots` - The directory of where to store the old dotfiles. Defaults to `$HOME/.old_dots/<current-time>`

## More customisation

To customise the home tree this builds, edit `dirs`.
To select what dotfiles are actually symlinked out of the repo, use `targets`.

This should (hopefully) work on Windows nearly out of the box.
Just remove the linux programs in `targets` and then install.

