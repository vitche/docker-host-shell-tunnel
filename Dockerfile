FROM alpine:3.7
RUN apk add netcat-openbsd

# v.1.0
# EXPOSE 1801-1802
# CMD while true; do cat /tmp/docker-host-shell-tunnel-output.fifo | nc -t -l -p 1801; done & while true; do nc -t -l -p 1802 > /tmp/docker-host-shell-tunnel-input.fifo; done

# v.2.0
EXPOSE 1801
CMD while true; do cat /tmp/docker-host-shell-tunnel-output.fifo | nc -t -l -p 1801 > /tmp/docker-host-shell-tunnel-input.fifo; done
