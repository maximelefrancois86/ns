# SSN Bruno Regression Collection

This Bruno collection mirrors the numbered checks in `ssn/2017/regression-tests.sh`.

- One request file per test number in `tests/`
- Uses `{{baseUrl}}` (defaults to `https://www.w3.org/ns/ssn` in `environments/Production.bru`)
- Uses a Bruno v3.2.2-compatible request format
- Uses `followRedirects: false` for all requests
- Assertions validate the first-hop response (status + location or content-type)

## Usage

1. Open `bruno/ssn-regression` in Bruno.
2. Select environment `Production` (or define your own with `baseUrl`).
3. Refresh/reload the collection in Bruno.
4. Run all requests in the `tests` folder.
