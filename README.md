# docker-host-shell-tunnel

This project achieves the following goals:
- Listens to incoming SHELL requests on a container TCP port within the Docker network;
- Passes these SHELL requests via the RPC buffer to the Docker Host machine;
- Executes these SHELL requests;
- Returns respective SHELL request execution results to the TCP port within the Docker network.

This is intended to be used for:
- Breaking from the isolated Docker environment into the Docker host machine;
- Therefore making the Docker host SHELL available within this isolated environment.

## To start a tunnel
```shell
sudo ./run.sh
```
This starts the host BASH worker and an RPC-bound Docker container listening on port 1801 for shell requests.

## To test a tunnel on a local (Docker host) machine
```shell
./test.sh read
```
to read data from the RPC buffer. 
Or
```shell
./test.sh write
```
to write the "ls" command to the RPC buffer. This command will be executed and the result will be available to the reading part immediately.

## To test a tunnel through Docker / TCP IP
```shell
netcat localhost 1801
```
This will display the result of the previous executed command or set of commands.
And anything ending with a newline what is sent to the input will be executed at the Docker host through the RPC tunnel.
