# Dotfiles
This repository contains the dotfiles that I maintain for my ubuntu computers.
## Features
* a lighter vim configuration
* bin folder with some useful scripts
* zathura config files
* both bash and vim have gruvbox schemes
* more coming soon?
## Installating:
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
If you are on a computer that does not have stow then using the provided `install.sh` script will create symlinks similar to stow.
```
# for example you want to install only the vim dotfiles
./install vim
```
## In the case of `bin/`
Should you want to update or add to bin, mv your file to the `/path/to/dotfiles` and run stow or install.sh again
