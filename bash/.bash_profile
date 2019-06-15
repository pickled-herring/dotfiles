# .bash_profile
# not much ado about nothing
[[ -a "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -a "$HOME/.bash_login" ]] && source "$HOME/.bash_login"

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
