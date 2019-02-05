# Dotfiles
These are the dotfiles that I maintain for my ubuntu computers
## Features
* a decent vim configuration with:
	* ctrlp
	* vim-fugitive
	* nerdcommenter
* both bash and vim should have gruvbox schemes
* More coming soon?
## Instructions:
1. run the bootstrapper:
	```
	./install.sh
	```
2. if you are on Ubuntu or using a gnome terminal, run this, otherwise skip it:
	```
	cd gnome-terminal-colors
	./install.sh
	```
This will take you to a program that installs the profile prefrences for gruvbox
3. install the vim plugins:
	```
	vim +PluginInstall
	```
## Configurations:
If you want to change the colorscheme then you should be able to with `gnome-terminal-colors/install.sh`. Other vim
colorschemes should be available in `~/.vim/bundle/vim-colorschemes/colors`
