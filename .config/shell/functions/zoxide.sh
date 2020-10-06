function zz () {
	local query="$*" sel
	local fzf_opts=()
	fzf_opts=(--filter "$query")
	sel="$(zoxide query --list --score | fzf -n2 --query "$query" "$fzf_opts[@]" | head -1 | tr -s ' ' | sed 's/^\s\+//' | cut -d' ' -f2)"  || return 1
	cd "$sel"
	unset sel
	unset fzf_opts
}
