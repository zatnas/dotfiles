function vc() {
	[ -f "$XDG_CONFIG_HOME/$1" ] || [ -d "$XDG_CONFIG_HOME/$1" ] && command vim "$XDG_CONFIG_HOME/$1"
}

function vci() {
	MYPWD="$PWD"

	if false; then :;
	elif command -v fzf >/dev/null; then
		FINDER="$(command -v fzf)"
	elif command -v sk  >/dev/null; then
		FINDER="$(command -v sk)"
	else
		echo "Either fzf or skim is needed to be able to run this command"
	fi

	cd "$HOME"

	if command -v fd >/dev/null; then
		FILE="$(fd -Hp -t f --ignore-file $HOME/Documents/git/dotfiles/gitbare/info/exclude $HOME | $FINDER)"
	else
		FILE="$(find $XDG_CONFIG_HOME -maxdepth 3 | $FINDER)"
	fi

	[ ! -z "$FILE" ] && command vim "$FILE"
	cd "$MYPWD"
	unset FILE MYPWD FINDER
}
