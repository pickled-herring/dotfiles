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
If you want to change the colorscheme then you should be able to with `gnome-terminal-colors/install.sh`. Other vim
colorschemes are available in `~/.vim/bundle/vim-colorschemes/colors`
