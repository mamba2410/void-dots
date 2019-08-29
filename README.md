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
<li>qt4/5 applications should be able to use the GTK2 theme, if not, install <code>qt5-styleplugins</code></li>
</ul>

<h3>Installation</h3>
<code>
git clone https://github.com/mamba2410/void-dots; <p>
cd void-dots; <p>
./install; <p>
</code>
Then follow the prompts on screen.

<h3>Update</h3>
If you made any changes, run <code>git stash; </code><p>
Next, run<p>
<code>
git pull; <p>
./linkfiles; <p>
</code>
If you stashed changes, pop them with <code>git stash pop</code>

<h3>What the scripts do</h3>
<ul>
<li><code>install</code> is the installer, it allows the user to create a new home tree, move the repository, then passes over to <code>linkfiles</code> for linking.
<li><code>linkfiles</code> helps you manage the symlinks, either moving, deleting or updating the links. To stop linking a file, remove the file directory in <code>targets</code> and you should be free to add your own config file in its place.<br>
<code>linkfiles</code> can take three arguments, the source for installation (default: the users current working directory), the destination for installation (default: $HOME), and the directory of where to store moved dotfiles (default: $HOME/.old_dots/*current time*/).
</ul>

<h3>More Customisation</h3>
The file <code>targets</code> contains all of the target dotfiles to link, with paths relative to <code>$HOME</code>. If you don't want a file linked, remove the path in that file and delete the symlink that is already there.

The file <code>dirs</code> contains the directories that will be created when <code>install</code> is run and the option is selected. As with <code>targets</code>, all of the directories are relative to <code>$HOME</code> and the user can add or remove directories as they so choose.

\* Included are/will be branches for other distros, like raspbian.
The raspbian branch is similar, but removes most of the the X components, like i3, polybar etc.
I haven't figured out what to do with it yet, but it's mainly so that I can have consistent aliases/shell prompts across the systems.
