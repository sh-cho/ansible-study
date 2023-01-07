THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: help up start down stop clean

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

clean:
	$(MAKE) down
	docker images | grep ansible- | awk '{print $$1}' | xargs docker image rm