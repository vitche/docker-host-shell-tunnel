case $1 in
	read)
		# cat /tmp/docker-host-shell-tunnel-output.fifo
		tail -f /tmp/docker-host-shell-tunnel-output.fifo
		;;
	write)
		echo "ls" > /tmp/docker-host-shell-tunnel-input.fifo
		;;
esac
