# Run Kiosc Server using Docker Compose

## Quickstart

### Prerequisites

- Install Git
- Install Docker & Docker Compose

### Repository Setup

```
$ git clone https://github.com/bihealth/kiosc-docker-compose.git
$ cd kiosc-docker-compose
$ bash init.sh
$ cp env.example .env
$ docker compose up
```

Open `.env` and change `DJANGO_SECRET_KEY` if you run this in production.

## Upgrading

### Unreleased

This release upgrades PostgreSQL from v12 to v16. If upgrading an existing Kiosc deployment, you **must** backup your database prior to upgrading and re-import it after upgrade is completed.
