# ansible-study

## How to use

### use with make

> **Note**
>
> See [Makefile](Makefile)

```
make up
make start
make down
make stop
```
docker compose commands

```
make clean
```
down + cleanup images

### manually

```sh
docker compose up -d
```
up (build & start)

```sh
docker compose stop
```
stop (not removing container)

```sh
docker compose start
```
start after stop

```sh
docker compose down
```
down (removing container)

```sh
docker images | grep ansible- | awk '{print $1}' | xargs docker image rm
```
cleanup dangling images after down
