# ./build.sh
# docker run ssh-tunnel
rm input.fifo output.fifo
mkfifo input.fifo output.fifo
chown ubuntu input.fifo output.fifo
./worker.sh input.fifo output.fifo
