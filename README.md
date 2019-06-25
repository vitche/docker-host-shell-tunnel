# docker-host-shell-tunnel

## To start a tunnel
```shell
sudo ./run.sh
```
This starts the host BASH worker and an RPC-bound Docker container listening to port 1801 for shell requests.

## To test a tunnel on a local (Docker host) machine
```shell
./test.sh read
```
to read data from the RPC buffer. 
Or
```shell
./test.sh write
```
to write the "ls" command to the RPC buffer.
