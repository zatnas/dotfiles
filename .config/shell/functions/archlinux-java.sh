alias archlinux-java="archlinuxjavawrapper"
archlinuxjavawrapper() {
	if command archlinux-java "$@" 3>&2 2>&1 1>&3 | grep -qP "This script must be run as root"; then
		printf "%s\n" "sudo: privilege escalation required"
		sudo "archlinux-java" "$@"
	fi
}
