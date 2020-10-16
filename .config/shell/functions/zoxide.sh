function zz () {
	if false; then :;
	elif command -v sk  >/dev/null; then
		finder="$(command -v sk)"
		opt="-n 2"
	elif command -v fzf >/dev/null; then
		finder="$(command -v fzf)"
		opt="-n2"
	fi

	sel="$(zoxide query --list --score | $finder $opt --query "$*" --filter "$*" | head -1 | sed 's/^\s\+[[:digit:]]\+\s\+//')" || \
		return 1
	cd "$sel"
	unset sel query finder opt
}
