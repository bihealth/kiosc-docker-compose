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
```

### Run for Deployment or Evaluation

Open `.env` and change `DJANGO_SECRET_KEY` if you run this in production.

To bring up the network for deployment or evaluation:

```
$ docker compose --profile deploy up
```

### Run for Development

This will run the database servers required by the Kiosc server. You are epxected to run the Kiosc Django server and required Celery processes locally.

```
$ docker compose --profile dev up
```

## Upgrading

### Unreleased

This release upgrades PostgreSQL from v12 to v16. If upgrading an existing Kiosc deployment, you **must** backup your database prior to upgrading and re-import it after upgrade is completed.

Redis has been upgraded from v6 to v8. If you encounter problems with upgrading an existing network, delete existing data in `volumes/redis`.
