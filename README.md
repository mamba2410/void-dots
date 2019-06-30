<h1>Dotfiles for my linux system</h1>

Dotfiles for my Void linux system.

WM: i3-gaps
Compositor: Compton
Bar: Polybar
Notifications: Dunst
Menus: Rofi
Editor: Neovim

I'm fairly new to ricing and not a master at Linux so let me know if I'm doing anything completely wrong.

To install the relevent files and backup the old ones, <code>cd</code> to the repo then run <code>gen.sh</code>.
Make sure you <code>cd</code> out once the script is finished, as it moves the repo to a new location.
Alternatively, put the repo anywhere you like and run <code>linkfiles</code> from inside the repo.

<code>linkfiles</code> moves old dotfiles that this repo would replace to a new directory and symlinks the dots in this repo to where they should be.
<code>makedirs</code> creates a directory tree which I think makes more sense and leads to a cleaner <code>/home/$USER</code>.

