function ydl() {
	command youtube-dl --download-archive "$XDG_CACHE_HOME/youtube-dl/archive/$(echo $PWD | tr '/' '%').archive.txt" "$@"
}
