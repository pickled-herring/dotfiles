# Dotfiles
These are the dotfiles that I maintain for my ubuntu computers
## Features
* a lighter vim configuration
* both bash and vim have gruvbox schemes
* zathura config files
* more coming soon?
## Instructions:
```
git clone https://github.umn.edu/to000002/Dotfiles-Ubuntu.git dotfiles
cd dotfiles
```
Then for any dotfile that you want to install just use gnu-stow
(you may have to install gnu-stow).
```
# for example you want to install only the vim dotfiles
stow vim
```
## Configurations:
If you want to change the colorscheme then you should be able to in with `.gnome-terminal-colors/install.sh`.
Note that this works only for gnote terminal.
I have not yet found a reason to use another terminal.
Other vim colorschemes are available in `~/.vim/bundle/vim-colorschemes/colors`
## In the case of `bin/`
Should you want to update or add to bin, mv your file to the `/path/to/dotfiles` and run stow again
