# cpu_consumer - CPU Consumption as a Service

This program just runs in an infinite loop.

It might be useful for simulating high cpu usage situations or testing cpu limiting in Docker, Docker Swarm, Kubernetes, etc.

The Docker image is only **344 bytes**!

## Usage

NOTE: The default target in `Makefile` assumes Docker is installed.  If not, check out `build/build.sh` for the `nasm` invocation.

```sh
make
./build/output/cpu_consumer # 1 core will start spinning at 100% cpu
```

Or just run the image right from my Docker Hub account:

```sh
docker run billrobinson/cpu_consumer # 1 core will start spinning at 100% cpu
```

## License

BSD
