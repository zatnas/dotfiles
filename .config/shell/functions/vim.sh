function vc() {
	[ -f "$XDG_CONFIG_HOME/$1" ] || [ -d "$XDG_CONFIG_HOME/$1" ] && command vim "$XDG_CONFIG_HOME/$1"
}

function vci() {
	MYPWD="$PWD"
	if command -v fd >/dev/null; then
		cd "$HOME"
		FILE="$(fd -Hp -t f --ignore-file $HOME/Documents/git/dotfiles/gitbare/info/exclude $HOME | fzf)"
	else
		FILE="$(find $XDG_CONFIG_HOME -maxdepth 3 | fzf)"
	fi

	[ ! -z "$FILE" ] && command vim "$FILE"
	cd "$MYPWD"
	unset FILE MYPWD
}
