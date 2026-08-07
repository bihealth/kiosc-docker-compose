# Changelog for kiosc-docker-compose

## v0.6-2 (2026-08-07)

- Change the mountpoint for the registry service to `/var/lib/docker/registry`
- Bump Kiosc version to v0.6.1
- Increase the default `KIOSC_DATA_UPLOAD_MAX_MEMORY_SIZE`

## v0.6-1 (2026-07-07)

- Bump Kiosc version to v0.6.0
- Add custom container registry (#19)

## v0.5-5 (2026-06-18)

- Bump Kiosc version (#22)
- Update environment variables for compatibility with Kiosc v0.5.3 (#22)

## v0.5-4 (2026-06-09)

- Bump Kiosc version (#21)

## v0.5-3 (2026-06-03)

- Bump Kiosc version (#20)

## v0.5-2 (2026-05-07)

- Upgrade to Traefik v3 (#17)

## v0.5-1 (2026-03-13)

- Add `NETWORK_BRIDGE_NAME` env var (#2)
- Add database setup on init (#6)
- Add `deploy` and `dev` profiles (#7)
- Add `REDIS_VERSION` env var (#10)
- Add `TRAEFIK_VERSION` env var (#1)
- Add `Makefile` targets `deploy` and `dev` (#12)
- Add relevant SODAR Core settings as env vars (#11)
- Expose PostgreSQL port in `dev` profile (#5)
- Update examples for `docker compose` (#4)
- Update database host and user credentials (#6)
- Update Kiosc env vars (#11, #15)
- Upgrade to Traefik v2.11 (#1)
- Upgrade to PostgreSQL v16 (#8)
- Upgrade to Redis v8 (#10)
- Remove obsolete `version` attribute (#3)

## v0.4-legacy (2026-02-19)

Release for legacy versions of Kiosc Server up to v0.4.
