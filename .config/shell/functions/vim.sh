alias vc="vimc"
function vimc() {
	if [ -f "$XDG_CONFIG_HOME/$1" ]; then 
		command vim "$XDG_CONFIG_HOME/$1"
	fi
}

alias vcf="vimcf"
function vimcf() {
	FILE="$(find $XDG_CONFIG_HOME -maxdepth 3 | fzf)"
	if [ ! -z "$FILE" ]; then
		command vim "$FILE"
	fi
	unset FILE
}
