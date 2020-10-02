function tmux() {
	if [ -f "$XDG_CONFIG_HOME/tmux/tmux.conf" ]; then
		command tmux -f "$XDG_CONFIG_HOME/tmux/tmux.conf" "$@"
	elif [ -f "$HOME/.tmux.conf" ]; then
		command tmux -f "$HOME/.tmux.conf" "$@"
	elif [ -f "/etc/tmux.conf" ]; then
		command tmux -f "/etc/tmux.conf" "$@"
	else
		command tmux "$@"
	fi
}
