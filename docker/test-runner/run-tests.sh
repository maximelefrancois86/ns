#!/bin/sh
set -eu

# Run the namespace regression tests against the Apache container.  Each
# namespace has one test file now, covering both of its editions.

target="${1:-all}"
host="${HOST:-http://web}"

wait_for_url() {
    attempts=30
    while [ "$attempts" -gt 0 ]; do
        if curl -fsSI "$1" >/dev/null 2>&1; then
            return 0
        fi
        attempts=$((attempts - 1))
        sleep 1
    done
    echo "Timed out waiting for $1" >&2
    exit 1
}

run() {
    namespace="$1"
    echo "Running $namespace/regression-tests.sh against $host/ns/$namespace"
    wait_for_url "$host/ns/$namespace/2023/"
    BASE_URL="$host/ns/$namespace" \
    SOSA_BASE="$host/ns/sosa" \
    SSN_BASE="$host/ns/ssn" \
    TEST_DELAY="${TEST_DELAY:-0}" \
        bash "/workspace/$namespace/regression-tests.sh"
}

case "$target" in
    sosa) run sosa ;;
    ssn)  run ssn ;;
    all)  run sosa; run ssn ;;
    *)    echo "Usage: run-tests [sosa|ssn|all]" >&2; exit 2 ;;
esac
