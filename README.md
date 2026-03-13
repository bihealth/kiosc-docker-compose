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
$ make deploy
```

Alternatively:

```
$ docker compose --profile deploy up
```

### Run for Development

This will run the database servers required by the Kiosc server. You are epxected to run the Kiosc Django server and required Celery processes locally.

```
$ make dev
```

Alternatively:

```
$ docker compose --profile dev up
```

## Upgrading

### v0.5-1

#### PostgreSQL Upgrade

This release upgrades PostgreSQL from v12 to v16. If upgrading an existing Kiosc deployment, you **must** backup your database prior to upgrading and re-import it after upgrade is completed.

#### Redis Upgrade

Redis has been upgraded from v6 to v8. If you encounter problems with upgrading an existing network, delete existing data in `volumes/redis`.

#### Kiosc Environment Variables

Kiosc environment variables have been reorganized and in some cases renamed. You should review your existing setup to ensure settings are passed using the correct environment variables.
