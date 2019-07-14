# Dotfiles
This repository contains the dotfiles that I maintain for my linux computers.
## Features
* a light vim configuration
* bin folder with some useful scripts
* zathura config files
* both bash and vim have gruvbox schemes
* more coming soon?
## Installating:
```
git clone --recursive https://github.umn.edu/to000002/dotfiles.git
# or
git clone --recursive https://github.com/pickled-herring/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh all
```
This bootstrapping mechanic is designed to be modular. If you only wanted to install vim dotfiles for example then you should run:
```
./install.sh vim
```
