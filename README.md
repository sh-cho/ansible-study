# ansible-study ![Ansible](https://img.shields.io/badge/Ansible-EE0000?logo=Ansible)

[![Ansible Lint](https://github.com/sh-cho/ansible-study/actions/workflows/ansible-lint.yml/badge.svg?branch=main&event=push)](https://github.com/sh-cho/ansible-study/actions/workflows/ansible-lint.yml)
[![Yaml Lint](https://github.com/sh-cho/ansible-study/actions/workflows/yaml-lint.yml/badge.svg?branch=main&event=push)](https://github.com/sh-cho/ansible-study/actions/workflows/yaml-lint.yml)

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

```
make exec_controller
make exec_target1
make exec_target2
```
exec

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
