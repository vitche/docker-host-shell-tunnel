USER=ubuntu
INPUT_FIFO=/tmp/docker-host-shell-tunnel-input.fifo 
OUTPUT_FIFO=/tmp/docker-host-shell-tunnel-output.fifo

# Clean-up previous FIFO worker data
rm $INPUT_FIFO $OUTPUT_FIFO

# Start the FIFO worker to process incoming command requests
touch $INPUT_FIFO $OUTPUT_FIFO
chown $USER $INPUT_FIFO $OUTPUT_FIFO
./worker.sh $INPUT_FIFO $OUTPUT_FIFO &

docker run -dit --restart always --name docker-host-shell-tunnel --volume $INPUT_FIFO:$INPUT_FIFO --volume $OUTPUT_FIFO:$OUTPUT_FIFO -p 1801-1802:1801-1802 vitche/docker-host-shell-tunnel
