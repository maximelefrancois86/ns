
# /ns

This is the repository for https://www.w3.org/ns/

See also [URIs for W3C Namespaces](https://www.w3.org/guide/editor/namespaces.html).

DO NOT MERGE new namespaces in this repository without proper approval from @transitions .

## Local Docker testing for `sosa` and `ssn`

This repository includes a minimal Apache-based Docker setup to test the static namespace rules in `sosa` and `ssn` from the repository root.

Requirements:

- Docker
- Docker Compose (`docker compose`)

Run the local server:

```sh
docker compose up -d web
```

The repository will be served at `http://localhost:8080/ns/`.

Run the regression scripts against the local container:

```sh
docker compose run --rm tests sosa
docker compose run --rm tests ssn
docker compose run --rm tests all
```

Equivalent `make` targets are also available:

```sh
make docker-test-sosa
make docker-test-ssn
make docker-test-all
make docker-test-down
```

Notes:

- The regression scripts now accept `BASE_URL` and `TEST_DELAY` environment variables.
- The Docker test runner sets `BASE_URL` to the local Apache container and `TEST_DELAY=0` for faster runs.
- HTML redirect checks still resolve to `https://www.w3.org/TR/vocab-ssn/`, so full end-to-end runs require outbound network access.

To view the redirection logs:

```
# External only (R=3xx sent to client)
docker compose logs -f web | grep 'rewrite:trace' | grep -i 'redirect'

# Internal pass-throughs / proxy
docker compose logs -f web 2>&1 \
| grep 'rewrite:trace' \
| grep -iE 'pass-through|proxy|internal'
```
