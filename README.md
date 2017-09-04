# Poc Kafka with Kibana

Poc project

## Introduction

## Running

The following are required to put all services online

### Kafka

Run the following command on terminal

```
SHELL
docker run --rm -it \
           -p 2181:2181 -p 3030:3030 -p 8081:8081 \
           -p 8082:8082 -p 8083:8083 -p 9092:9092 \
           -e ADV_HOST=127.0.0.1 \
           landoop/fast-data-dev
```

### Reaching the Kafka command line tools

docker run --rm -it --net=host landoop/fast-data-dev bash

## References:

Landoop fast data dev container: https://github.com/Landoop/fast-data-dev
