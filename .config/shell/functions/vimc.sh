function vimc() {
	if [ -f "$XDG_CONFIG_HOME/$1" ]; then vim "$XDG_CONFIG_HOME/$1"; fi
}
