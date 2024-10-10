# sipexer-docker

Sipexer tool with docker support

## Using via Docker Compose

### How Build

```sh
docker compose build sipexer
```

### How run commands

#### Enter in container shell and execute multiples commands at once

```sh
docker compose up ## or docker compose run shell
## inside container shell
sipexer udp 127.0.0.1 5060
sipexer -laddr 127.0.0.1:55060 udp:127.0.0.1:5060
...
```

#### Execute commands directly

```sh
docker compose run sipexer sipexer udp 127.0.0.1 5060
```

## Using without Docker Compose

### How Build

```sh
docker build --build-arg SIPEXER_TAG=main -t sipexer:latest .
```

### How run commands

#### Enter in container shell and execute multiples commands at once

```sh
docker run -it --name sipexer sipexer:latest
## inside container shell
sipexer udp 127.0.0.1 5060
sipexer -laddr 127.0.0.1:55060 udp:127.0.0.1:5060
...
```

#### Execute commands directly

```sh
docker run -it --name sipexer sipexer:latest sipexer udp 127.0.0.1 5060
```

## How to use Sipexer

Details about usage can be found on the official repository: [sipexer](https://github.com/miconda/sipexer)

## Thanks

Thanks to the official tool mantainers and all rights are reserved to them
