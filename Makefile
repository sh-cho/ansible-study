THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: help up start down stop clean exec_controller exec_target1 exec_target2

help:
	make -pRrq  -f $(THIS_FILE) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

up:
	docker-compose up -d

start:
	docker-compose start

down:
	docker-compose down

stop:
	docker-compose stop

clean: down
	docker images | grep ansible- | awk '{print $$1}' | xargs docker image rm

exec_controller:
	docker exec -it ansible-controller /bin/bash

exec_target1:
	docker exec -it ansible-target1 /bin/bash

exec_target2:
	docker exec -it ansible-target2 /bin/bash
