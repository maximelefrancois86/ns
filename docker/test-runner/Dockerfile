FROM alpine:3.20

RUN apk add --no-cache bash curl

WORKDIR /workspace

COPY docker/test-runner/run-tests.sh /usr/local/bin/run-tests

RUN chmod +x /usr/local/bin/run-tests

ENTRYPOINT ["/usr/local/bin/run-tests"]