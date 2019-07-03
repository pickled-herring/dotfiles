# .bash_profile
# not much ado about nothing
[[ -a "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
[[ -a "$HOME/.bash_login" ]] && source "$HOME/.bash_login"

# Export env variables
[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"
