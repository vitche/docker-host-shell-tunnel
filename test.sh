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
	listen)
		while true; do cat /tmp/docker-host-shell-tunnel-output.fifo | nc -t -l -p 1801; done &
		while true; do nc -t -l -p 1802 > /tmp/docker-host-shell-tunnel-input.fifo; done # &
		;;
	listen-write)
		;;
esac
