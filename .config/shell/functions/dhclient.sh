
dhclient() {
	if command dhclient "$@" 3>&2 2>&1 1>&3 | grep -qP "Operation not permitted"; then
		printf "%s\n" "sudo: privilege escalation required"
		sudo "dhclient" "$@"
	fi
}
