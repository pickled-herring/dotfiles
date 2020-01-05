CPATH=${PWD}

# Defaults to bash but we should be able to change this.
all: bash vim zathura tmux

bash: sh
	ln -sf $(CPATH)/bashrc ~/.bashrc
	ln -sf $(CPATH)/bash_profile ~/.bash_profile

sh:
	ln -sf $(CPATH)/profile ~/.profile

vim:
	ln -sf $(CPATH)/vimrc ~/.vimrc

bin_:
	ln -sf $(CPATH)/bin ~/bin

zathura:
	ln -sf $(CPATH)/zathurarc ~/.config/zathura/zathurarc

tmux:
	ln -sf $(CPATH)/tmux_conf ~/.tmux.conf
