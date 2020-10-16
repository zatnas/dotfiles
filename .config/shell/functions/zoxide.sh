function zz () {
	if false; then :;
	elif command -v sk  >/dev/null; then
		finder="$(command -v sk)"
		opt="-n 2"
	elif command -v fzf >/dev/null; then
		finder="$(command -v fzf)"
		opt="-n2"
	fi

	query="$*"
	sel="$(zoxide query --list --score | $finder $opt --query "$query" --filter "$query" | head -1 | tr -s ' ' | sed 's/^\s\+//' | cut -d' ' -f2)" || \
		return 1
	cd "$sel"
	unset sel query finder opt
}
