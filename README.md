<h1>Dotfiles for my linux system</h1>

Dotfiles for my Void\* linux system.

<ul>
<li>WM: i3-gaps</li>
<li>Compositor: Compton</li>
<li>Bar: Polybar</li>
<li>Notifications: Dunst</li>
<li>Menus: Rofi</li>
<li>Editor: Neovim</li>
<li>Lock Screen: betterlockscreen</li>
<li>Terminal: Luke Smith's build of st</li>
<li>GTK Theme: <a href="https://www.gnome-look.org/p/1254680/">Obscure-Green</a></li>
<li>GTK Icons: <a href="https://www.opendesktop.org/p/1218961/">Green-Maia</a></li>
</ul>

I'm fairly new to ricing and not a master at Linux so let me know if I'm doing anything completely wrong.

To install the relevent files and backup the old ones, <code>cd</code> to the repo then run <code>gen.sh</code>.
Make sure you <code>cd</code> out once the script is finished, as it moves the repo to a new location.
Alternatively, put the repo anywhere you like and run <code>linkfiles</code> and optionally <code>makedirs</code> from inside the repo.

<ul>
<li><code>linkfiles</code> moves old dotfiles that this repo would replace to a new directory and symlinks the dots in this repo to where they should be.</li>
<li><code>makedirs</code> creates a directory tree which I think makes more sense and leads to a cleaner <code>/home/$USER</code>.</li>
<li><code>gen.sh</code> moves the git repo to <code>~/user/*reponame*/</code> and runs the scripts above.</li>
</ul>

\* Included are/will be branches for other distros, like raspbian.
The raspbian branch is similar, but removes most of the the X components, like i3, polybar etc.
I haven't figured out what to do with it yet, but it's mainly so that I can have consistent aliases/shell prompts across the systems.
