docker() {
	[ ! -f "/var/run/docker.pid" ] && \
		echo "/var/run/docker.pid is not found. Starting up docker.service" && \
		systemctl start docker
	[ ! -f "/var/run/docker.pid" ] && \
		echo "docker.service was not started. Exiting" && \
		return

	command docker "$@"
}

alias docker-compose="dockercompose"
dockercompose() {
	[ ! -f "/var/run/docker.pid" ] && \
		echo "/var/run/docker.pid is not found. Starting up docker.service" && \
		systemctl start docker
	[ ! -f "/var/run/docker.pid" ] && \
		echo "docker.service was not started. Exiting" && \
		return

	command docker-compose "$@"
}
