ntpdate() {
	if command ntpdate "$@" 1>&2 2>&1 | grep -qP ".*Permission denied"; then
		printf "%s\n" "sudo: privilege escalation required"
		sudo "ntpdate" "$@"
	fi
}
