FROM alpine:3.7
RUN apk add netcat-openbsd
CMD while true; do cat /tmp/docker-host-shell-tunnel-output.fifo; done | nc -t -l -p 1801 > /tmp/docker-host-shell-tunnel-input.fifo
