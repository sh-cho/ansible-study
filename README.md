## ansible-study

### How to use

#### start

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

#### clean

```sh
docker compose down
```
down (removing container)

```sh
docker images | grep ansible- | awk '{print $1}' | xargs docker image rm
```
cleanup dangling images after down
