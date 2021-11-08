# Run Kiosc Server using Docker Compose

- TODO

## Quickstart

Prerequisites:

- Install Git
- Install Docker & Docker Compose

Then:

```
$ git clone https://github.com/bihealth/kiosc-docker-compose.git
$ cd kiosc-docker-compose
$ bash init.sh
$ cp env.example .env
$ docker-compose up
```

Open `.env` and change `DJANGO_SECRET_KEY` if you run this in production.
