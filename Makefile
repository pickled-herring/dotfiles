CPATH=${PWD}

# Defaults to bash but we should be able to change this.
all: bash vim zathura tmux bin_

bash: sh
	ln -sf $(CPATH)/bashrc ~/.bashrc
	ln -sf $(CPATH)/bash_profile ~/.bash_profile
	ln -sf $(CPATH)/gruvbox ~/.gruvbox
	ln -sf $(CPATH)/ocnext ~/.ocnext
	ln -sf $(CPATH)/iron ~/.iron

sh:
	ln -sf $(CPATH)/profile ~/.profile

vim:
	ln -sf $(CPATH)/vimrc ~/.vimrc

zathura:
	ln -sf $(CPATH)/zathurarc ~/.config/zathura/zathurarc

tmux:
	ln -sf $(CPATH)/tmux_conf ~/.tmux.conf

commit:
	git add -A
	git commit
