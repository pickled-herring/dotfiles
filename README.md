# Dotfiles
This repository contains the dotfiles that I maintain for my linux computers.
## Features
* a light vim configuration
* bin folder with some useful scripts
* zathura config files
* both bash and vim have gruvbox schemes
* more coming soon?
## Installating:
Before you install anything make sure you backup your current system settings. The current install script will overwrite any system dotfiles that you have.

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

Currently you can change the path the files will be installed into by editing install.sh. The script reads from a LINKS variable to determine where the files in dotfiles need to be symlinked to. The layout of LINKS is as follows:
```
%category %file %path
```
Where `%category` is the category of the file (or module), `%file` is the path of the file that you want to install relative to install.sh's directory and `%path` is the path to where the file should go.

## Tracking files
The install script works as gnu stow and will create symlinks to where you need. Any changes to the files in your home directory will result in changes in your local dotfiles repository.
