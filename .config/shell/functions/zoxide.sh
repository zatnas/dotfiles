function zz () {
	if false; then :;
	elif command -v fzf >/dev/null; then
		finder="$(command -v fzf)"
	elif command -v sk  >/dev/null; then
		finder="$(command -v sk)"
	fi

	sel="$(zoxide query --list --score | $finder -n 2.. --query "$*" --filter "$*" | head -1 | sed 's/^\s*[[:digit:]]\+\s*//')" || \
		return 1
	cd "$sel"
	unset sel finder
}
