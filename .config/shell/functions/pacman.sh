pacman() {
	if command pacman --color=always "$@" 3>&2 2>&1 1>&3 | grep -qP ".*error.*root"; then
		printf "%s\n" "sudo: privilege escalation required"
		sudo "pacman" "$@"
	fi
}
