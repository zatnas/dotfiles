function vimc() {
	if [ -f "$XDG_CONFIG_HOME/$1" ]; then 
		command vim "$XDG_CONFIG_HOME/$1"
	fi
}

function vimcf() {
	command vim "$(find $XDG_CONFIG_HOME | fzf)"
}
