# Testing the namespace rules locally

An Apache container that serves this repository the way `https://www.w3.org/ns/`
does, so that the `.htaccess` rules and the regression tests can be exercised
before anything is proposed upstream.

**This harness is working material.** It is removed before the pull request to
`w3c/ns`: see `steering/decisions/outillage-de-test.md`.

Start the server — the repository is then at `http://localhost:8080/ns/`:

```sh
docker compose up -d web
```

Run the regression scripts against it:

```sh
docker compose run --rm tests sosa
docker compose run --rm tests ssn
docker compose run --rm tests all
```

Stop everything:

```sh
docker compose down --remove-orphans
```

The regression scripts read `BASE_URL` and `TEST_DELAY` from the environment;
the runner sets `BASE_URL` to the container and `TEST_DELAY=0`. Redirects to the
specification still resolve to `https://www.w3.org/TR/…`, so a full run needs
outbound network access.

Watching the rewrite engine:

```sh
# Redirects sent to the client
docker compose logs -f web | grep 'rewrite:trace' | grep -i 'redirect'

# Internal pass-throughs and proxying
docker compose logs -f web 2>&1 | grep 'rewrite:trace' | grep -iE 'pass-through|proxy|internal'
```
