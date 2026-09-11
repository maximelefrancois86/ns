#!/bin/sh
set -eu

target="${1:-all}"

wait_for_url() {
    url="$1"
    attempts=30

    while [ "$attempts" -gt 0 ]; do
        if curl -fsSI "$url" >/dev/null 2>&1; then
            return 0
        fi

        attempts=$((attempts - 1))
        sleep 1
    done

    echo "Timed out waiting for $url" >&2
    exit 1
}

run_script() {
    script_path="$1"
    namespace_path="${script_path#/workspace/}"
    namespace_path="${namespace_path%/regression-tests.sh}"
    base_url="http://web/ns/$namespace_path"

    case "$namespace_path" in
        sosa/prov)
            base_url="http://web/ns/sosa/2017/prov"
            ;;
        sosa/sampling)
            base_url="http://web/ns/sosa/2023/sampling"
            ;;
        ssn/systems)
            base_url="http://web/ns/ssn/2017/systems"
            ;;
    esac

    echo "Running $namespace_path/regression-tests.sh"
    wait_for_url "$base_url/"
    BASE_URL="$base_url" TEST_DELAY="${TEST_DELAY:-0}" bash "$script_path"
}

run_tree() {
    root="$1"

    find "/workspace/$root" -type f -name 'regression-tests.sh' | sort | while IFS= read -r script_path; do
        run_script "$script_path"
    done
}

case "$target" in
    sosa)
        run_tree sosa
        ;;
    ssn)
        run_tree ssn
        ;;
    all)
        run_tree sosa
        run_tree ssn
        ;;
    *)
        echo "Usage: run-tests [sosa|ssn|all]" >&2
        exit 2
        ;;
esac