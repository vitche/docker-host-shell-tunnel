case $1 in
	read)
        # v.1.0
		# cat /tmp/docker-host-shell-tunnel-output.fifo

		# v.2.0
		tail -f /tmp/docker-host-shell-tunnel-output.fifo
		;;
	write)
		echo "ls" > /tmp/docker-host-shell-tunnel-input.fifo
		;;
esac
